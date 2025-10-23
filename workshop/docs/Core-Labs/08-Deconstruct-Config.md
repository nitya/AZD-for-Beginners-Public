# 8. Deconstruct: `azure.yaml` 

!!! quote ""

    **Objective:** Understand what `azure.yaml` does<br/>
    **Estimate:** 5 mins <br/>
    **Analogy:** [The Construction Schedule](0-Welcome.md#2-the-home-builder-analogy)

    - [What is azure.yaml?](#what-is-azureyaml)
    - [Service Definitions](#service-definitions)
    - [Exercise: Explore Configuration](#exercise-explore-configuration)

---

## What is azure.yaml?

The `azure.yaml` file is AZD's master configuration connecting your code to Azure resources.

It defines:
• Project name and metadata  
• Services (what code to deploy)  
• Build and deployment settings  
• Hooks for custom scripts  

## Service Definitions

Each service maps source code to Azure infrastructure:

```yaml
services:
  web:
    project: ./src        # Code location
    language: python      # Programming language  
    host: containerapp    # Azure resource type
```

## Exercise: Explore Configuration

!!! lab "In this exercise, you'll examine the `azure.yaml` file to understand how it defines services and deployment configuration."

Let's examine your project's master configuration file.

### 1: Open the Configuration File

```bash title="" linenums="0"
cat azure.yaml
```

### 2: Identify Project Metadata

Find the top section with:
- Project name  
- Metadata and tags  

### 3: Locate Service Definitions

Find the `services:` section. For each service, note:

1. Service name  
2. Code location (`project:` path)  
3. Programming language  
4. Host type (e.g., `containerapp`)  

### 4: Check for Hooks

Look for lifecycle hooks like:
- `preprovision` - Runs before provisioning  
- `postdeploy` - Runs after deployment  

These let you customize the deployment process.

### 5: Ask Copilot For Help

Want to explore more? Try asking Copilot:

1. How do I add a new service to azure.yaml?
2. What's the difference between `project` and `module` in service definitions?
3. How can I use hooks to customize deployment?

---

**Next:** Explore the source code structure!