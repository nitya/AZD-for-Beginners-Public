#!/bin/bash
# ============================================================================
# Script: 6-get-env.sh
# Description: Updates the .env file with latest values from Azure deployment
# Usage: ./scripts/6-get-env.sh
# ============================================================================

set -e  # Exit on error

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# Script directory and workspace root
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
WORKSPACE_ROOT="$(dirname "$SCRIPT_DIR")"
ENV_FILE="$WORKSPACE_ROOT/.env"
AZD_ENV_DIR="$SCRIPT_DIR/ForBeginners/.azd-setup/.azure"

echo -e "${BLUE}======================================${NC}"
echo -e "${BLUE}Environment Update Script${NC}"
echo -e "${BLUE}======================================${NC}\n"

# ============================================================================
# Step 1: Find AZD environment directory
# ============================================================================
echo -e "${YELLOW}Step 1: Locating AZD environment...${NC}"

if [ ! -d "$AZD_ENV_DIR" ]; then
    echo -e "${RED}Error: AZD directory not found at $AZD_ENV_DIR${NC}"
    exit 1
fi

# Read the default environment name
CONFIG_FILE="$AZD_ENV_DIR/config.json"
if [ ! -f "$CONFIG_FILE" ]; then
    echo -e "${RED}Error: config.json not found${NC}"
    exit 1
fi

ENV_NAME=$(jq -r '.defaultEnvironment' "$CONFIG_FILE")
AZD_ENV_FILE="$AZD_ENV_DIR/$ENV_NAME/.env"

if [ ! -f "$AZD_ENV_FILE" ]; then
    echo -e "${RED}Error: AZD .env file not found at $AZD_ENV_FILE${NC}"
    exit 1
fi

echo -e "${GREEN}✓ Found AZD environment: $ENV_NAME${NC}\n"

# ============================================================================
# Step 2: Load variables from AZD .env
# ============================================================================
echo -e "${YELLOW}Step 2: Loading variables from AZD deployment...${NC}"

# Source the AZD .env file
source "$AZD_ENV_FILE"

echo -e "${GREEN}✓ Loaded variables from AZD${NC}"
echo -e "  Resource Group: $AZURE_RESOURCE_GROUP"
echo -e "  Location: $AZURE_LOCATION"
echo -e "  Subscription: $AZURE_SUBSCRIPTION_ID\n"

# ============================================================================
# Step 3: Verify Azure CLI login
# ============================================================================
echo -e "${YELLOW}Step 3: Verifying Azure CLI authentication...${NC}"

if ! az account show &>/dev/null; then
    echo -e "${RED}Error: Not logged in to Azure CLI${NC}"
    echo -e "Please run: ${BLUE}az login${NC}"
    exit 1
fi

CURRENT_SUBSCRIPTION=$(az account show --query id -o tsv)
if [ "$CURRENT_SUBSCRIPTION" != "$AZURE_SUBSCRIPTION_ID" ]; then
    echo -e "${YELLOW}Switching to subscription: $AZURE_SUBSCRIPTION_ID${NC}"
    az account set --subscription "$AZURE_SUBSCRIPTION_ID"
fi

echo -e "${GREEN}✓ Azure CLI authenticated${NC}\n"

# ============================================================================
# Step 4: Get Azure OpenAI endpoint
# ============================================================================
echo -e "${YELLOW}Step 4: Retrieving Azure OpenAI endpoint...${NC}"

AOAI_NAME=$(echo "$AZURE_AI_FOUNDRY_NAME" | grep -o 'aoai-[^"]*' || echo "aoai-lqkyocm5gjeti")
if [ -z "$AOAI_NAME" ]; then
    # Try to find from existing project endpoint
    AOAI_NAME=$(echo "$AZURE_EXISTING_AIPROJECT_ENDPOINT" | grep -oP 'aoai-[^.]+' || echo "")
fi

if [ -n "$AOAI_NAME" ]; then
    OPENAI_ENDPOINT=$(az cognitiveservices account show \
        --name "$AOAI_NAME" \
        --resource-group "$AZURE_RESOURCE_GROUP" \
        --query "properties.endpoint" -o tsv 2>/dev/null || echo "")
    
    if [ -n "$OPENAI_ENDPOINT" ]; then
        echo -e "${GREEN}✓ Found OpenAI endpoint: $OPENAI_ENDPOINT${NC}"
    else
        echo -e "${YELLOW}⚠ Could not retrieve OpenAI endpoint, using value from AZD${NC}"
        OPENAI_ENDPOINT="https://${AOAI_NAME}.cognitiveservices.azure.com/"
    fi
else
    echo -e "${YELLOW}⚠ Could not determine OpenAI account name${NC}"
    OPENAI_ENDPOINT=""
fi
echo ""

# ============================================================================
# Step 5: Get Application Insights connection string
# ============================================================================
echo -e "${YELLOW}Step 5: Retrieving Application Insights details...${NC}"

# Find Application Insights resource
APPINSIGHTS_RESOURCES=$(az resource list \
    --resource-group "$AZURE_RESOURCE_GROUP" \
    --resource-type "Microsoft.Insights/components" \
    --query "[].name" -o tsv)

if [ -n "$APPINSIGHTS_RESOURCES" ]; then
    APPINSIGHTS_NAME=$(echo "$APPINSIGHTS_RESOURCES" | head -n 1)
    
    APPINSIGHTS_DATA=$(az resource show \
        --ids "/subscriptions/$AZURE_SUBSCRIPTION_ID/resourceGroups/$AZURE_RESOURCE_GROUP/providers/Microsoft.Insights/components/$APPINSIGHTS_NAME" \
        --query "{connectionString: properties.ConnectionString, instrumentationKey: properties.InstrumentationKey}" \
        -o json)
    
    APPINSIGHTS_CONNECTION_STRING=$(echo "$APPINSIGHTS_DATA" | jq -r '.connectionString')
    APPINSIGHTS_INSTRUMENTATION_KEY=$(echo "$APPINSIGHTS_DATA" | jq -r '.instrumentationKey')
    
    echo -e "${GREEN}✓ Found Application Insights: $APPINSIGHTS_NAME${NC}"
else
    echo -e "${YELLOW}⚠ No Application Insights found${NC}"
    APPINSIGHTS_CONNECTION_STRING=""
    APPINSIGHTS_INSTRUMENTATION_KEY=""
fi
echo ""

# ============================================================================
# Step 6: Generate the new .env file
# ============================================================================
echo -e "${YELLOW}Step 6: Generating updated .env file...${NC}"

# Backup existing .env
if [ -f "$ENV_FILE" ]; then
    BACKUP_FILE="$ENV_FILE.backup.$(date +%Y%m%d_%H%M%S)"
    cp "$ENV_FILE" "$BACKUP_FILE"
    echo -e "${GREEN}✓ Backed up existing .env to: $BACKUP_FILE${NC}"
fi

# Generate new .env content
cat > "$ENV_FILE" << EOF
# ============================================================================
# Azure Environment Variables
# Auto-generated by scripts/6-get-env.sh on $(date)
# From AZD deployment: $ENV_NAME
# ============================================================================

# .... Azure Environment Variables (from AZD)
AZURE_ENV_NAME="$AZURE_ENV_NAME"
AZURE_LOCATION="$AZURE_LOCATION"
AZURE_RESOURCE_GROUP="$AZURE_RESOURCE_GROUP"
AZURE_SUBSCRIPTION_ID="$AZURE_SUBSCRIPTION_ID"
AZURE_TENANT_ID="$AZURE_TENANT_ID"

# .... Azure AI Foundry
AZURE_OPENAI_API_KEY=  # TODO: Get from Azure Portal if needed (using DefaultAzureCredential instead)
AZURE_OPENAI_ENDPOINT="$OPENAI_ENDPOINT"
AZURE_OPENAI_API_VERSION="2025-02-01-preview" 
AZURE_OPENAI_DEPLOYMENT="$AZURE_AI_AGENT_DEPLOYMENT_NAME"

# .... Azure AI Foundry Resources (from Azure portal)
AZURE_AI_FOUNDRY_NAME="$AOAI_NAME"
AZURE_AI_PROJECT_NAME="${AZURE_AI_PROJECT_NAME:-proj-lqkyocm5gjeti}"
AZURE_EXISTING_AIPROJECT_ENDPOINT="$AZURE_EXISTING_AIPROJECT_ENDPOINT"
AZURE_EXISTING_AIPROJECT_RESOURCE_ID="$AZURE_EXISTING_AIPROJECT_RESOURCE_ID"

# .... Azure AI Search (Required for add-product-index script)
AZURE_SEARCH_ENDPOINT="$AZURE_AI_SEARCH_ENDPOINT"
AZURE_AISEARCH_ENDPOINT="$AZURE_AI_SEARCH_ENDPOINT"
AZURE_AI_SEARCH_ENDPOINT="$AZURE_AI_SEARCH_ENDPOINT"
AZURE_SEARCH_API_KEY=  # TODO: Get from Azure Portal if needed (using DefaultAzureCredential instead)
AZURE_SEARCH_INDEX_NAME="$AZURE_AI_SEARCH_INDEX_NAME"
AZURE_AISEARCH_INDEX="$AZURE_AI_SEARCH_INDEX_NAME"
AZURE_AI_SEARCH_INDEX_NAME="$AZURE_AI_SEARCH_INDEX_NAME"

# .... Agent Configuration
AZURE_AI_AGENT_DEPLOYMENT_NAME="$AZURE_AI_AGENT_DEPLOYMENT_NAME"
AZURE_AI_AGENT_MODEL_NAME="$AZURE_AI_AGENT_MODEL_NAME"
AZURE_AI_AGENT_MODEL_VERSION="$AZURE_AI_AGENT_MODEL_VERSION"
AZURE_AI_AGENT_DEPLOYMENT_CAPACITY=$AZURE_AI_AGENT_DEPLOYMENT_CAPACITY
AZURE_AI_AGENT_NAME="$AZURE_AI_AGENT_NAME"

# .... Embedding Model Configuration
AZURE_AI_EMBED_DEPLOYMENT_NAME="$AZURE_AI_EMBED_DEPLOYMENT_NAME" 
AZURE_AI_EMBED_MODEL_NAME="$AZURE_AI_EMBED_MODEL_NAME"
AZURE_AI_EMBED_MODEL_VERSION=$AZURE_AI_EMBED_MODEL_VERSION
AZURE_AI_EMBED_DEPLOYMENT_CAPACITY=$AZURE_AI_EMBED_DEPLOYMENT_CAPACITY
AZURE_AI_EMBED_DEPLOYMENT_SKU="$AZURE_AI_EMBED_DEPLOYMENT_SKU"
AZURE_AI_EMBED_DIMENSIONS=$AZURE_AI_EMBED_DIMENSIONS
AZURE_AI_EMBED_MODEL_FORMAT="$AZURE_AI_EMBED_MODEL_FORMAT"

# .... Container Apps & Registry
AZURE_CONTAINER_ENVIRONMENT_NAME="$AZURE_CONTAINER_ENVIRONMENT_NAME"
AZURE_CONTAINER_REGISTRY_ENDPOINT="$AZURE_CONTAINER_REGISTRY_ENDPOINT"
SERVICE_API_NAME="$SERVICE_API_NAME"
SERVICE_API_URI="$SERVICE_API_URI"
SERVICE_API_ENDPOINTS='$SERVICE_API_ENDPOINTS'
SERVICE_API_IDENTITY_PRINCIPAL_ID="$SERVICE_API_IDENTITY_PRINCIPAL_ID"
SERVICE_API_AND_FRONTEND_IMAGE_NAME="$SERVICE_API_AND_FRONTEND_IMAGE_NAME"

# .... Monitoring & Tracing
USE_APPLICATION_INSIGHTS="$USE_APPLICATION_INSIGHTS"
ENABLE_AZURE_MONITOR_TRACING="$ENABLE_AZURE_MONITOR_TRACING"
AZURE_TRACING_GEN_AI_CONTENT_RECORDING_ENABLED="$AZURE_TRACING_GEN_AI_CONTENT_RECORDING_ENABLED"
APPLICATIONINSIGHTS_CONNECTION_STRING="$APPINSIGHTS_CONNECTION_STRING"
APPLICATIONINSIGHTS_INSTRUMENTATION_KEY="$APPINSIGHTS_INSTRUMENTATION_KEY"
EOF

echo -e "${GREEN}✓ Generated new .env file${NC}\n"

# ============================================================================
# Step 7: Summary and Manual Actions
# ============================================================================
echo -e "${BLUE}======================================${NC}"
echo -e "${BLUE}Summary${NC}"
echo -e "${BLUE}======================================${NC}\n"

echo -e "${GREEN}✅ Successfully updated .env file!${NC}\n"

echo -e "${YELLOW}📋 Updated Variables:${NC}"
echo -e "  • Resource Group: $AZURE_RESOURCE_GROUP"
echo -e "  • Location: $AZURE_LOCATION"
echo -e "  • OpenAI Endpoint: $OPENAI_ENDPOINT"
echo -e "  • AI Search Endpoint: $AZURE_AI_SEARCH_ENDPOINT"
echo -e "  • Container Registry: $AZURE_CONTAINER_REGISTRY_ENDPOINT"
echo -e "  • Service API URI: $SERVICE_API_URI"

if [ -n "$APPINSIGHTS_CONNECTION_STRING" ]; then
    echo -e "  • Application Insights: ${GREEN}✓ Connected${NC}"
else
    echo -e "  • Application Insights: ${YELLOW}⚠ Not found${NC}"
fi

echo -e "\n${YELLOW}⚠️  Manual Actions Required:${NC}"
echo -e "The following values are marked as TODO and may need manual update:"
echo -e "  1. ${BLUE}AZURE_OPENAI_API_KEY${NC} (if not using DefaultAzureCredential)"
echo -e "     Get from: Azure Portal → $AOAI_NAME → Keys and Endpoint → Key 1"
echo -e "  2. ${BLUE}AZURE_SEARCH_API_KEY${NC} (if not using DefaultAzureCredential)"
echo -e "     Get from: Azure Portal → Search service → Keys → Admin Key"
echo -e "\n${GREEN}💡 Note: If using managed identity, these keys are not required!${NC}\n"

echo -e "${BLUE}======================================${NC}"
echo -e "${GREEN}✓ Done!${NC}"
echo -e "${BLUE}======================================${NC}\n"
