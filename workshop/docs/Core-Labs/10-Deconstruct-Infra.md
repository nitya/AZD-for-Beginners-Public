# 10. Deconstruct `infra/` 

!!! quote ""

    **Objective:** Understand what the `infra/` folder contains <br/>
    **Estimate:** 5 mins <br/>
    **Analogy:** [The Construction Materials](0-Welcome.md#2-the-home-builder-analogy)

    - [The Infrastructure Folder](#the-infrastructure-folder)
    - [Bicep Modules](#bicep-modules)
    - [Exercise: Explore Infrastructure](#exercise-explore-infrastructure)

---

## The Infrastructure Folder

The `infra/` directory defines Azure resources using Infrastructure-as-Code (IaC).

When you run `azd provision`, these files tell Azure:
• What services to create (AI Foundry, Container Apps, Storage, etc.)  
• How to configure them (SKUs, regions, settings)  
• How they connect together  

## Bicep Modules

Templates use Bicep (Azure's IaC language):

```
infra/
├── main.bicep            # Entry point
├── main.parameters.json  # Configuration values
└── modules/              # Reusable components
    ├── ai-hub.bicep
    ├── container-apps.bicep
    └── storage.bicep
```

Each module defines one resource type.

## Exercise: Explore Infrastructure

!!! lab "In this exercise, you'll explore the `infra/` folder to understand how infrastructure-as-code defines your Azure resources."

Let's examine your infrastructure definitions.

### 1: Navigate to Infrastructure Directory

```bash title="" linenums="0"
cd infra
ls -la
```

### 2: View the Main Template

Open the main Bicep file:

```bash title="" linenums="0"
cat main.bicep
```

### 3: Identify Resource Declarations

Look for lines starting with `resource` - these define Azure services:
- AI Foundry hub  
- AI Foundry project  
- Container Apps environment  
- Storage account  
- Key Vault  

### 4: Check Parameters

Find the `param` declarations - these are configuration inputs you can customize:
- Location (Azure region)  
- SKU tiers  
- Resource names  

### 5: Review Modules

List the modules directory:

```bash title="" linenums="0"
ls modules/
```

Each file defines a reusable infrastructure component.

### 6: Ask Copilot For Help

Want to explore more? Try asking Copilot:

1. What's the difference between Bicep and ARM templates?
2. How do I add a new Azure resource to the infrastructure?
3. What are the benefits of using modules in Bicep?

---

**Next:** Explore the environment configuration!