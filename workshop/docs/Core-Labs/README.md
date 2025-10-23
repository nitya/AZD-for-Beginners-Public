# AZD for AI Developers Workshop

Welcome! This is a hands-on beginner-friendly workshop that teaches you how to work with the [Azure Developer CLI (azd)](https://aka.ms/azd) and [AI App Templates](https://aka.ms/ai-apps) to build, customize, deploy, and monitor, a new AI Agent application on Azure AI Foundry.

  **Level:** Beginner-Intermediate <br/>
  **Duration:** 3-4 hours

## Pre-Requisites

- [ ] You will need a personal GitHub account - [Signup here if needed](https://github.com/signup)
- [ ] You will need a active Azure subscription - [Signup her if needed](https://aka.ms/free)
- [ ] Some familiarity with Generative AI concepts is required
- [ ] Familiarity with Python, VS Code, Git and Commandline tools is desirable


## Learning Objectives

By the end of this workshop, you should be able to:

- [ ] Explain what the Azure Developer CLI (azd) is - and how it works
- [ ] Explain what azd templates are - and hows to discover them
- [ ] Initialize a new AI Agent project from an azd template 
- [ ] Provision, deploy, and monitor, the AI Agent solution using azd
- [ ] Customize template - for knowledge retrieval with Azure AI Search
- [ ] Customize template - for evaluations with quality, safety & agent metrics
- [ ] Customize template - for red teaming with risk categories & attack strategies
- [ ] Customize template - for observability with tracing and monitoring features
- [ ] Customize template - to deploy a modified version of the app to Azure AI Foundry

You will also walk away with a _development sandbox_ in the form of a GitHub Codespaces environment that is pre-build with all required tools and dependencies. Use this to challenge yourself by exploring new features or experimenting with new templates.

## Before You Begin

To work on this lab, you need a **development environment** and an **instruction guide**. We also provide an _optional_ feature to use GitHub Copilot fort AI-assisted learning through open-ended questions and troubleshooting help. Let's get you setup!


### 1. Setup Dev Environment

This repository is instrumented with a `devcontainer.json` file that creates a pre-built development container with all the necessary tools and dependencies. **The recommended approach is to activate this with GitHub Codespaces** as follows:

1. Open a new browser and log into your GitHub account (see [Pre-Requisites](#pre-requisites))
1. Fork [this repository](https://github.com/microsoft/AZD-for-beginners) to your GitHub profile to use as a sandbox
1. Open the fork in your browser - click the blue **Code** button
1. Select the **Codespaces** tab - click the "+" sign to create a new Codespace
1. This opens a new browser tab with a **VS Code IDE** - wait till it loads
1. The VS Code terminal will be open - wait till it shows an active prompt

!!! success "**Congratulations!** → Your development environment is ready!"


### 2. Launch Instruction Guide

This repository is instrumented with an `mkdocs.yml` file that creates an interactive workshop guide from the docs, that you can view in the browser. **This gives you features like search, dark mode, copy-paste, and color-coded tips** that make navigation easier. Let's launch it now:

1. Go back to the GitHub Codespaces tab with the VS Code terminal open
1. Run this command in the terminal - watch for a dialog to popup

    ```bash title="" linenums="0"
    nohup mkdocs serve > /dev/null 2>&1 &
    ```

1. Confirm the "Open in Browser" option - watch for a new browser tab to open
1. You should see _this_ page - click the **Launch Instruction Guide** to see _this_ section!
1. You can now continue following instructions in the browser!

??? tip "**TIP 1: Use the search feature to navigate quickly** (click to expand)"

    - Example: Click the Search bar at the top of the page
    - Search For: "Validate" - you should see all the pages with keyword

??? tip "**TIP 2: Use the copy/paste feature for efficiency** (click to expand)"

    - Example: In the codefence below, hover to see the copy/paste icon (right)
     
        ```bash title="" linenums="0"
        echo "Welcome to the AI for AZD Developers Workshop"
        ```
    - Click - to copy contents to your clipboard
    - Paste - into the VS Code terminal, to run the command

!!! success "**Congratulations!** → Your instruction guide is ready!"

### 3. (Optional) Get AI Assistance

Sometimes you may want a more detailed explanation of a concept, or need help troubleshooting an issue when working in self-guided mode. GitHub Copilot Chat (with Agent Mode) can help! The Codespaces environment will have this available as an option - you should be able to use the [free tier](https://github.com/settings/copilot/features) of GitHub Copilot for this purpose.

**Ask Copilot**: You may see admonitions like this in the tutorial. Simply copy the "prompt" in the list item into the chat window, and hit enter to get a response.

!!! prompt "ASK COPILOT"

    ```title="" linenums="0"
    What is azd?
    ```

You may be **prompted to sign in with your GitHub account** the first time, to authorize specific extensions (e.g., GitHub Copilot for Azure). Once done, you will see a response like this that can give you added insight _along with references to documentation where you can learn more_.

![Ask Copilot](./../assets/Core-Labs/00-Ask-Copilot.png)

!!! prompt "EXPLORE SUGGESTED PROMPTS"

    The Copilot response will be accompanied by additional meta-prompts you can explore if needed. For instance, the above response had these three suggested follow-up prompts **that you can just click** to keep the conversation going and build added knowledge.

    - How do I install azd?
    - What can I do with azd?
    - Is azd different from the Azure CLI?

!!! success "**Congratulations!** → Your AI learning assistant is ready!"

### 4. Complete Lab Exercises

Each module will have a hands-on lab segment that will be identified by an admonition like this. 

!!! lab "LAB 01: Explore AZD Commands"

    For this lab, you should open a VS Code terminal and be ready to copy/paste commands for each exercise below.

The lab may be inline with the lesson (e.g., have a new section with instructions to follow) or may require you to open a separate file (e.g., a Jupyter notebook you can run). The admonition text will give you guidance on which option to follow as shown.

**Ready to get started? Click _Next_ in the footer below.**

---


## Learning Resources

- **📚 Course Home** → [AZD For Beginners](../README.md)
- **📖 Documentation** → [What is the Azure Developer CLI?](https://aka.ms/azd)
- **📖 Documentation** → [Get started with AI templates](https://learn.microsoft.com/azure/ai-foundry/how-to/develop/ai-template-get-started)
- **🛠️ AI Templates** → [Azure AI Foundry Templates](https://ai.azure.com/templates) 
- **🚀 Challenge Yourself** →  [Customize For A New Application](#workshop-challenge) 

---
