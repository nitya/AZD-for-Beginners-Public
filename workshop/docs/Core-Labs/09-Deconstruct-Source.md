# 9. Deconstruct `src/` 

!!! quote ""

    **Objective:** Understand what the `src/` folder contains <br/>
    **Estimate:** 5 mins <br/>
    **Analogy:** [The Pre-Fab Starter Home](0-Welcome.md#2-the-home-builder-analogy)

    - [The Source Code Folder](#the-source-code-folder)
    - [Application Structure](#application-structure)
    - [Exercise: Explore the Code](#exercise-explore-the-code)

---

## The Source Code Folder

The `src/` directory contains your application code - the programs users interact with.

For this AI agent template:
• Web UI (React/JavaScript frontend)  
• API layer (Python backend)  
• Agent configuration files  
• Static assets (CSS, images)  

## Application Structure

Typical layout:

```
src/
├── frontend/          # Web UI code
├── backend/           # API and agent logic
├── requirements.txt   # Python dependencies
├── package.json       # JavaScript dependencies  
└── Dockerfile         # Container configuration
```

## Exercise: Explore the Code

!!! lab "In this exercise, you'll navigate the `src/` folder to understand the application structure and key code files."

Let's explore your application source code.

### 1: Navigate to Source Directory

```bash title="" linenums="0"
cd src
ls -la
```

### 2: Identify Frontend Code

Look for:
- `index.html` or `App.tsx` - Main UI entry point  
- React/JavaScript files  
- Static assets (CSS, images)  

### 3: Identify Backend Code

Find Python files like:
- `main.py` - API entry point  
- Agent configuration files  
- Business logic modules  

### 4: Review Dependencies

Check dependency files:

```bash title="" linenums="0"
cat requirements.txt
```

This shows which Python packages the application needs.

### 5: Check Container Configuration

View the Dockerfile:

```bash title="" linenums="0"
cat Dockerfile
```

This defines how your app runs in a container.

### 6: Ask Copilot For Help

Want to explore more? Try asking Copilot:

1. How do I add new Python dependencies to the project?
2. What's the difference between frontend and backend code in this template?
3. How can I modify the agent's behavior?

---

**Next:** Explore the infrastructure code!