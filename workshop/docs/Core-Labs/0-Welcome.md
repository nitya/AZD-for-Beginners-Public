# Introduction

Before we dive into the lessons and labs, let's set the stage with an outline.

!!! info "ABOUT THIS WORKSHOP"

    **Level:** Beginner-Intermediate <br/>
    **Duration:** 3-4 hours

    This workshop teaches you how to provision, deploy, and customize, an [AI Agents Starter Template](https://github.com/Azure-Samples/get-started-with-ai-agents) using the Azure Developer CLI (azd) tool and workflow. You'll learn to do this in four stages:

    1. **Discovery** - learn about `azd`, templates and galleries. Find a template!
    1. **Deployment** - use `azd` to deploy the template to Azure. Validate it works!
    1. **Deconstruction** - explore the codebase structure. Understand components & interactions!
    1. **Customization** - refactor the codebase iteratively. Activate features & modify components!

    You should then be able to reproduce this process and challenge yourself to modify the existing template further, or start a new project with a diferent template and solution architecture.

---

## 1. The Application Scenario

Our goal is to deploy and customize an **AI Agent solution** using an azd template. Let's start by defining what the related scenario might look like. Having a practical application can help us relate to specific tools or ideas more easily.

**Scenario:** Build an customer support AI assistant for an enterprise retailer

!!! quote ""

    1. You are an AI engineer working for an enterprise retail company (Zava) that sells home improvement goods.
    1. You are tasked with building a customer support agent that can answer user questions about your products.
    1. The chatbot should have a polite and helpful persona and be cost-effective (in tokens) and fast (in latency).
    1. The chatbot experience should be trustworthy - we want monitoring, tracing, evaluations and red teaming.
    1. The chatbot should have a user-friendly interface - suitable for use in an online website.



## 2. The Home-Builder Analogy

That's quite a few requirements - so how do we even get started? What does a solution architecture look like? And how does the Azure Developer CLI fit into the picture?

One useful trick is to have a relevant analogy in the back of your mind that helps you reframe the problem space using familiar themes. You can then make connections faster to other related tools or concepts in an intuitive way. Let's try this out!

**Analogy:** Building an enterprise AI app is like building a new home and moving in!

!!! quote ""

    1. **We need a general contractor** - Instead of doing everything ourselves, we need an expert who can manage the resources and schedules, and execute the plan. _This is the [Azure Developer CLI (azd)](https://learn.microsoft.com/azure/developer/azure-developer-cli/overview)_.
    1. **We need a design blueprint** - Instead of starting from scratch, we might pick a "pre-fab" design that suits our needs, and ask the contractor to use that as the basis to build on. _This is your [azd template](https://learn.microsoft.com/azure/developer/azure-developer-cli/azd-templates)_.
    1. **We need building materials** - We need to decide what fixtures and utilities we want, and provide preferences to install and configure them correctly. _This is your [infrastructure-as-code](https://learn.microsoft.com/azure/azure-resource-manager/bicep/overview) `infra/` folder_.
    1. **We need interior design** - We need to stage that home with furniture and other accessories to make it ready for real users to live in and interact. _This is your application code (src/ folder)_.
    1. **We need a construction plan** - This outlines the tasks to be done by the contractor and the order in which to do them, to bring the design to life. _This is your configuration file (azure.yaml)_
    1. **We need utility accounts and permits** - These define key information (parameters and credentials) that homeowners need to know, to operate that home.  _This is your .azure folder (with a `.env` file)_

As we go through the exercises, we'll try to refer to this analogy to give you a new frame of reference. Once you're done with the workshop, return to this section and ask yourself:

- _Does this analogy still make sense?_ Is there a different analogy that might work for your learning style? 
- _What other connections can we make?_ Are there other aspects to the template codebase or structure we can explain this way?


## 3. The Starter Template

By now, you've guessed that our journey will begin with an azd template - but which one should we use? In the workshop, we'll walk through the process that gets us to this choice, but for now let's take a quick look at what it provides in terms of a solution architecture.

**Template Choice:** [Get started with AI Agents](https://github.com/Azure-Samples/get-started-with-ai-agents?tab=readme-ov-file) from Azure AI Foundry

The schematic shows the design architecture for this template. By deploying this solution, you get a functional AI agent application with:

- 🤖 [Azure AI Foundry](https://learn.microsoft.com/azure/ai-foundry/what-is-azure-ai-foundry) platform with a sample agent and model deployment
- 🔍 [Azure AI Search](https://learn.microsoft.com/azure/search/retrieval-augmented-generation-overview) integration for knowledge retrieval with RAG
- 📊 Built-in Observability with Azure Monitoring and Tracing capabilities
- 🔒 Built-in Evaluators for assessing quality, safety & agent effectiveness
- 🧪 Built-in Red Teaming Agent for adversarial testing across risk categories
- ☁️ Built-in Application Hosting using [Azure Container Apps](https://learn.microsoft.com/azure/container-apps/overview) 

![Architecture](./../assets/architecture.png)

## 4. The Learning Roadmap

We can now dive into the learning journey with this analogy in the back of our mind. We've organized the modules into the four stages of the journey as shown below - **click on each tab to see the objective and lessons associated with that stage**. The fifth tab identifies a challenge you can take, to test your own understanding of the content at the end.


=== "1. Discover"

    _Learn the fundamentals concepts of Azure Developer CLI and Templates_

    1. [Azure Developer CLI](01-Discover-AZD.md) - Meet Your Contractor
    1. [AZD Templates](02-Discover-Templates.md) - Learn about Blueprints
    1. [Template Sources](03-Discover-Galleries.md) - See Blueprint galleries
    1. [Template Selection](04-Discover-AI-Starter.md) - Select a PreFab Design
 
=== "2. Deploy"

    _Deploy and validate your AI Agent starter template_

    1. [Deploy Template](05-Deploy-AI-Starter.md) - Install Pre-fab Home
    1. [Validate Deployment](06-Validate-AI-Starter.md) - Do A Home Inspection

=== "3. Deconstruct"

    _Deconstruct the codebase to understand key files and workflows_

    1. [Understand `README`](07-Deconstruct-Features.md) - The Homeowner Manual
    1. [Understand `azure.yaml`](08-Deconstruct-Config.md) - The Construction Schedule
    1. [Understand `src/`](09-Deconstruct-Source.md) - The Pre-Fab Starter Home
    1. [Understand `infra/`](10-Deconstruct-Infra.md) - The Construction Materials
    1. [Understand `.azure/`](11-Deconstruct-Env.md) - The Permits & Passcodes

=== "4. Customize"

    _Reconstruct the template by customizing its features & source for your needs_

    1. [Add AI Models](12-Customize-Template.md#exercise-1-add-ai-models) - Change Utility Provider
    1. [Add AI Agent](12-Customize-Template.md#exercise-2-add-ai-agent) - Get a New Roommate
    1. [Add AI Search](12-Customize-Template.md#exercise-3-add-ai-search) - Bring My Furniture In
    1. [Add Evaluations](12-Customize-Template.md#exercise-4-add-evaluations) - Do Regular Inspections
    1. [Activate Tracing & Monitoring](12-Customize-Template.md#exercise-5-activate-tracing-monitoring) - Get Utility Dashboard
    1. [Activate Red Teaming Scan](12-Customize-Template.md#exercise-6-activate-red-teaming-scan) - Protect From Home Invasion

=== "5. Challenge"

    _Challenge yourself to apply what you learned in a new project!_

    1. [Customize this template even further](13-Challenge-Yourself.md#challenge-1-customize-your-kitchen) - Redesign your current home (new app scenario)
    1. [Reproduce the steps with a different template](13-Challenge-Yourself.md#challenge-2-move-to-a-bigger-home) - Move to a new home (new app architecture)

## Let's Go! 🚀

Ready to get started? Click the _Next_ arrow below.

