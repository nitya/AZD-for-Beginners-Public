# 6. Validate: AI Starter

!!! quote ""

    **Objective:** Validate deployment by visiting Azure Portal and Azure AI Foundry Portal<br/>
    **Estimate:** 10 mins <br/>
    **Analogy:** [Do A Home Inspection](0-Welcome.md#2-the-home-builder-analogy)

    - [Validation Checklist](#validation-checklist)
    - [Check Azure Resources](#check-azure-resources)
    - [Test AI Foundry](#test-ai-foundry)
    - [Exercise: Test Your Agent](#exercise-test-your-agent)

---

## Validation Checklist

After deployment, verify these components:

• Infrastructure is provisioned in Azure Portal  
• AI models are deployed in AI Foundry  
• Web application is running  
• Agent responds to prompts  

## Check Azure Resources

### View in Azure Portal

1. Get your resource group name from the `azd up` output
2. Visit [portal.azure.com](https://portal.azure.com)
3. Search for your resource group (starts with `rg-`)

You should see:
- AI Foundry hub  
- AI Foundry project  
- Container Apps environment  
- Container App (your web UI)  
- Application Insights  
- Storage account  
- Key Vault  

## Test AI Foundry

### Access AI Foundry Portal

1. In Azure Portal, find your AI Foundry project resource
2. Click "Launch Studio" button
3. This opens [ai.azure.com](https://ai.azure.com)

### Verify Deployments

In AI Foundry:
1. Navigate to **Deployments** (left menu)
2. Confirm you see deployed models (usually GPT-4 and an embeddings model)
3. Note the deployment names - you'll use these later

## Exercise: Test Your Agent

!!! lab "In this exercise, you'll test your deployed AI agent through the web interface and monitor its performance using `azd monitor`."

Time to interact with your deployed AI agent!

### 1: Open the Web Application

From your terminal, get the web app URL:

```bash title="" linenums="0"
azd show
```

Look for the endpoint URL (usually ends with `.azurecontainerapps.io`).

Open it in your browser.

### 2: Test Basic Interaction

In the chat interface:

1. Type: **"Hello, who are you?"**
2. Press Enter

The agent should introduce itself and explain its purpose.

### 3: Test Knowledge Retrieval

Try a product-related question (the sample agent knows about products):

**"What products do you have?"**

The agent should list available products using RAG (Retrieval Augmented Generation).

### 4: Test Conversation Flow

Have a multi-turn conversation:

1. **"Tell me about your return policy"**
2. **"How long does shipping take?"**
3. **"Can you help me find a red shirt?"**

Notice how the agent maintains context across turns.

### 5: Check the Monitoring

View application logs:

```bash title="" linenums="0"
azd monitor
```

This opens Application Insights showing:
- Request traces  
- AI model calls  
- Performance metrics  
- Any errors or warnings  

### 6: Ask Copilot For Help

Want to explore more? Try asking Copilot:

1. How do I view detailed logs in Azure Application Insights?
2. What metrics should I monitor for AI agent performance?
3. How can I test my agent with different scenarios?

!!! success "What to Look For"
    ✅ Agent responds within 2-5 seconds  
    ✅ Answers are relevant and coherent  
    ✅ Agent stays in character  
    ✅ No error messages in UI or logs  

!!! warning "Troubleshooting"
    If the agent doesn't respond:

    • **Check model deployments** - Verify in AI Foundry portal  
    • **Review logs** - Run `azd monitor --logs`  
    • **Check environment variables** - Ensure connections are configured  

---

**Next:** Let's deconstruct the template to understand how it all works!

---