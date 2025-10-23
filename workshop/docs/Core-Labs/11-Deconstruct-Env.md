# 11. Deconstruct `.azure/` 

!!! quote ""

    **Objective:** Understand what the `.azure/` folder contains <br/>
    **Estimate:** 5 mins <br/>
    **Analogy:** [The Permits & Passcodes](0-Welcome.md#2-the-home-builder-analogy)

    - [The Environment Folder](#the-environment-folder)
    - [Configuration and Secrets](#configuration-and-secrets)
    - [Exercise: Review Your Environment](#exercise-review-your-environment)

---

## The Environment Folder

The `.azure/` directory stores environment-specific configuration created during `azd init` and `azd provision`.

It's hidden (starts with `.`) because it contains sensitive data.

Contents:
• **Environment names** (dev, test, prod)  
• **Configuration values** (subscription ID, location)  
• **Deployment state** (resource IDs, connection strings)  
• **Secrets** (API keys, passwords)  

⚠️ **Important:** Add `.azure/` to `.gitignore` - never commit secrets to version control!

## Configuration and Secrets

After provisioning, `.azure/` contains:

```
.azure/
└── myenv/
    ├── .env              # Environment variables
    └── config.json       # Azure settings
```

The `.env` file holds deployment outputs like endpoints and keys.

## Exercise: Review Your Environment

!!! lab "In this exercise, you'll explore the `.azure/` folder to understand environment configuration and secrets management."

Let's examine your environment settings.

### 1: List Environment Files

Check what was created:

```bash title="" linenums="0"
ls -la .azure/
```

### 2: View Environment Name

List all configured environments:

```bash title="" linenums="0"
azd env list
```

The active environment is marked with an asterisk (*).

### 3: Check Configuration Values

View environment variables (sanitized output):

```bash title="" linenums="0"
azd env get-values
```

This shows:
- Azure subscription ID  
- Resource group name  
- Service endpoints  
- Configuration settings  

🔒 **Note:** Sensitive values are redacted for security.

### 4: Understand the Structure

Navigate to your environment folder:

```bash title="" linenums="0"
cd .azure/<your-env-name>
ls -la
```

You'll see:
- `.env` - Environment variables  
- `config.json` - Azure settings  

### 5: Review Security Best Practices

Verify `.gitignore` excludes `.azure/`:

```bash title="" linenums="0"
cat .gitignore | grep .azure
```

⚠️ **Important:** Never commit `.azure/` to version control!

### 6: Ask Copilot For Help

Want to explore more? Try asking Copilot:

1. How do I create multiple environments (dev, staging, prod)?
2. What's the difference between .env and config.json?
3. How can I securely share environment configuration with my team?

---

**Next:** Customize the template to make it your own!