# 5. Deploy: AI Starter

!!! quote ""

    **Objective:** Install the Azure AI Agent Starter Template in this dev environment <br/>
    **Estimate:** 15-20 mins <br/>
    **Analogy:** [Install Pre-fab Home](0-Welcome.md#2-the-home-builder-analogy)

    - [Understanding Deployment](#understanding-deployment)
    - [Before You Deploy](#before-you-deploy)
    - [The `azd up` Command](#the-azd-up-command)
    - [Exercise: Deploy to Azure](#exercise-deploy-to-azure)

---

## Understanding Deployment

When you run `azd up`, two things happen:

1. **Provision** (`azd provision`) - Creates Azure resources based on `infra/` files
2. **Deploy** (`azd deploy`) - Packages and deploys your code to those resources

The command is idempotent - run it multiple times safely. It only updates what changed.

## Before You Deploy

Make sure you have:

• **Azure subscription** - With permissions to create resources  
• **Logged in to Azure** - Run `azd auth login` if needed  
• **Project initialized** - Completed Lab 04  

The deployment will create resources that incur costs (minimal for development/testing).

## The `azd up` Command

`azd up` orchestrates the entire deployment:

1. Packages your application code  
2. Creates resource group in Azure  
3. Provisions all infrastructure (AI Foundry, Container Apps, etc.)  
4. Deploys web application  
5. Configures connections and secrets  
6. Outputs the application URL  

Expect 10-15 minutes for first deployment.

## Exercise: Deploy to Azure

!!! lab "In this exercise, you'll use `azd up` to provision Azure resources and deploy the AI Agent application end-to-end."

Let's deploy your AI agent application!

### 1: Ensure You're Logged In

```bash title="" linenums="0"
? Would you like to log in now? Yes

Start by copying the next code: AGQ6SVLGH
Then press enter and continue to log in from your browser...
```

This opens a browser for authentication. Sign in with your Azure account.

### 2: Run AZD Up

From your project directory (`ai-agent-workshop`):

```bash title="" linenums="0"
azd up
```

### 3: Select Subscription and Location

When prompted:

1. **Choose your Azure subscription** - Select from the list
2. **Choose Azure location** - Pick a region (e.g., `eastus`, `westus2`)

!!! tip "Choosing a Location"
    Select a region close to you for better performance. For AI services, prefer `eastus`, `westus`, or `swedencentral` which have the latest AI capabilities.

### 4: Watch the Progress

You'll see output showing:

```bash title="" linenums="0"
Packaging services...
Provisioning Azure resources...
  - Creating resource group
  - Creating AI Foundry hub
  - Creating AI Foundry project
  - Deploying AI models
  - Creating Container Apps environment
  - ...

Deploying services...
  - Building container image
  - Deploying web app

SUCCESS: Your application was provisioned and deployed to Azure
```

### 5: Note the Output

At the end, `azd` displays:

- **Resource Group name** - Where all resources live  
- **Application URL** - Where your web app is running  
- **Azure Portal link** - To view resources  

Copy these URLs - you'll need them in the next lab!

### 6: Verify Completion

Check that deployment succeeded:

```bash title="" linenums="0"
azd show
```

This displays your deployed resources and their status.

### 7: Ask Copilot For Help

Want to explore more? Try asking Copilot:

1. What's the difference between `azd up`, `azd provision`, and `azd deploy`?
2. How can I troubleshoot failed deployments?
3. Can I deploy to multiple environments (dev, staging, prod)?

!!! warning "Troubleshooting"
    If deployment fails:

    • **Quota limits** - Check you haven't exceeded Azure quotas  
    • **Region availability** - Try a different region if AI services aren't available  
    • **Permissions** - Ensure you have Contributor role on the subscription  

    Run `azd up` again - it resumes from where it failed.

---

**Next:** Let's validate the deployment and test your AI agent!

---