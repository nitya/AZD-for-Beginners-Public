# 7. Deconstruct `README` 

!!! quote ""

    **Objective:** Understand what the README tells you about the template <br/>
    **Estimate:** 5 mins <br/>
    **Analogy:** [The Homeowner Manual](0-Welcome.md#2-the-home-builder-analogy)

    - [The README File](#the-readme-file)
    - [Architecture Diagram](#architecture-diagram)
    - [Key Features](#key-features)
    - [Exercise: Explore Documentation](#exercise-explore-documentation)

---

## The README File

Every AZD template includes a README.md that serves as your project guide. It documents:

• Architecture and design decisions  
• Azure resources used  
• Setup and deployment instructions  
• Configuration options  
• Customization guides  

Think of it as the owner's manual for your template.

## Architecture Diagram

The README shows how components connect:

**User Request Flow:**
```
Browser → Container Apps → AI Agent Service → GPT-4 Model
                                    ↓
                             AI Search (RAG)
                                    ↓
                          Application Insights
```

Each arrow represents data flow and service dependencies.

## Key Features

This template showcases:

• **AI Agent Service** - Managed agent runtime with built-in tools  
• **RAG (Retrieval Augmented Generation)** - Grounds responses in your data  
• **Scalable Hosting** - Container Apps auto-scales based on demand  
• **Monitoring** - Full observability with traces and metrics  
• **Security** - Managed identities, Key Vault integration  

## Exercise: Explore Documentation

!!! lab "In this exercise, you'll explore the README to understand the template architecture, features, and customization options."

Let's dive into the template documentation.

### 1: Open the README

From your project directory:

```bash title="" linenums="0"
cat README.md
```

Or open it in VS Code:

```bash title="" linenums="0"
code README.md
```

### 2: Find the Architecture Section

Scroll to the architecture diagram. Identify:

1. **Entry point** - Where users interact  
2. **Compute** - Where code runs  
3. **AI services** - Model deployments  
4. **Data** - Search indexes and storage  
5. **Monitoring** - Observability tools  

### 3: Review Key Features

Find the "Features" section. Note which capabilities are included:

- [ ] AI Agent deployment  
- [ ] Sample knowledge base  
- [ ] Web UI for testing  
- [ ] Evaluation framework  
- [ ] Red teaming tools  

Check which ones interest you for customization later.

### 4: Check Prerequisites

Find the "Prerequisites" section. Confirm you have:

✅ Azure subscription  
✅ AZD CLI installed  
✅ Appropriate permissions  

### 5: Locate Customization Options

Find sections on:

- Adding your own data  
- Modifying the agent persona  
- Changing AI models  
- Enabling additional features  

Bookmark these - you'll use them in the Customize section!

### 6: Ask Copilot For Help

Want to explore more? Try asking Copilot:

1. What's the difference between the architecture diagram and the file structure?
2. How do I add my own documentation to the README?
3. What are the best practices for customizing AZD templates?

---

**Next:** Explore the azure.yaml configuration file!

---