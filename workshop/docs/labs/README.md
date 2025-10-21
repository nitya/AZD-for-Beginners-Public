# Azure Developer CLI Learning Roadmap for Absolute Beginners

## 🏡 Home Building Analogy Glossary

Understanding Azure Developer CLI through the lens of building a house:

### Core Concepts

**Azure Developer CLI (azd)** = **The General Contractor**
- Your trusted expert who coordinates the entire construction process
- Knows all the right subcontractors (Azure services) and how to work with them
- Handles the complex logistics so you don't have to

**Templates** = **Architectural Blueprints**
- Pre-designed house plans that include structural details and room layouts
- Can be used as-is or customized to fit your specific needs
- Include specifications for materials (Azure resources) needed

**Infrastructure as Code (Bicep/Terraform)** = **Construction Drawings & Specifications**
- Detailed technical drawings that specify exact measurements and materials
- Bicep = Azure's native blueprint language (like using imperial measurements in the US)
- Terraform = Universal blueprint language (like using metric, works everywhere)

**azure.yaml** = **The Master Build Schedule**
- Lists all work packages (services) and which parts of the house they belong to
- Coordinates when the plumber, electrician, and carpenter show up
- Maps your floor plans (code) to the actual construction (Azure resources)

**infra folder** = **The Architect's Drawing Set**
- Contains all the technical specifications for your house's foundation and systems
- Defines what materials to order and how everything connects
- The contractor reads these to know what to build

**src folder** = **The Interior Design & Fixtures**
- Your actual application code - the furniture, paint colors, and decorations
- The livable parts of the house that make it uniquely yours
- What people interact with after the house is built

**.azure folder** = **The Building Permits & Site Information**
- Contains your lot location (Azure region), permit numbers (subscription ID)
- Environment-specific information (building for mountains vs. beach?)
- Local regulations and requirements

**Environment Name** = **The Property Address**
- Unique identifier for your specific construction project
- You might build multiple houses (dev, staging, production) at different addresses
- Helps keep different projects organized and separate

**Resource Group** = **The Construction Site**
- The specific plot of land where all your building materials and structures go
- Everything related to one house project is organized in one location
- Easy to clean up - just clear the whole site when done

**Azure Resources** = **Building Materials & Utilities**
- App Service = The house foundation and framing
- Database = The water well and plumbing system
- Storage Account = The garage and storage shed
- Container Apps = Modern prefab modular homes that arrive ready to use

**Provisioning** = **Site Preparation & Foundation Work**
- Clearing the land, pouring the foundation, bringing in utilities
- Setting up all the infrastructure before you move in
- Done once, then you build on top of it

**Deployment** = **Moving In & Furnishing**
- Bringing your furniture (code) into the completed house
- Connecting appliances and making everything functional
- Can be done multiple times as you redecorate

**CI/CD Pipeline** = **The Assembly Line for Production Homes**
- Automated process that builds identical houses efficiently
- Quality checks at each stage ensure consistent results
- Every time you approve changes, a new house gets built automatically

### Commands as Construction Actions

**azd init** = **Breaking Ground**
- Starting your construction project
- Getting the blueprints and permits ready
- Marking out where everything will go

**azd up** = **Complete Build-Out**
- The contractor does everything: foundation, framing, finishing
- Combines preparation and furnishing in one command
- Your house goes from empty lot to move-in ready

**azd provision** = **Building the Structure**
- Constructing the foundation, walls, roof, and utilities
- Getting the house ready to be lived in
- Creates the infrastructure without adding your belongings

**azd deploy** = **Interior Setup**
- Moving your furniture and belongings into the house
- Installing your custom features and decorations
- Updates what's inside without rebuilding the foundation

**azd down** = **Demolition & Site Cleanup**
- Tearing down the house and removing all materials
- Clearing the construction site completely
- Stops costs when you're done with the project

**azd monitor** = **Home Security System**
- Watching what's happening in your house 24/7
- Getting alerts when something needs attention
- Reviewing logs of who came and went

**azd env** = **Managing Multiple Properties**
- Keeping track of different houses you're building
- Each property (environment) has its own address and specifications
- Switch between vacation home, rental property, and main residence

### Advanced Concepts

**Hooks** = **Custom Subcontractors**
- Special workers you bring in for unique tasks
- Run before or after standard construction phases
- Add custom automation to the standard building process

**Service Principal** = **Licensed & Bonded Contractor Credentials**
- Official authorization to work on construction sites
- Proves your contractor is legitimate and trusted
- Needed for automated construction (CI/CD)

**Managed Identity** = **On-Site Security Badge**
- Services can access each other without sharing keys
- Like contractors having badges to enter different areas
- More secure than everyone sharing one master key

**Template Gallery (Awesome AZD)** = **Home Design Showcase**
- Catalog of pre-designed house plans you can choose from
- Browse by style (tech stack), size (complexity), features (Azure services)
- Pick one and customize it to your needs

**Compose Feature** = **Modular Construction**
- Adding rooms (services) one at a time
- Each module knows how to connect to the others
- Build your house incrementally as needs grow

---

## 🎯 Your Learning Journey: From Apprentice to Builder

### Phase 1: Understanding the Construction Site (Week 1)

#### Step 1.1: Meet Your Contractor
📚 **Read:** [What is the Azure Developer CLI?](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/overview)

**Summary:** 
Learn what azd is and why it exists - your friendly contractor who simplifies building on Azure.
Understand the core problem azd solves: making Azure development accessible and repeatable.

**Exercise:**
Watch the introductory video and write down 3 ways azd differs from managing Azure resources manually.
List the main stages of development (provision, deploy, monitor) and what each means.

---

#### Step 1.2: azd vs az - Choosing the Right Tool
📚 **Read:** [Azure Developer CLI vs Azure CLI](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azure-developer-cli-vs-azure-cli)

**Summary:**
Understand when to use azd (building complete houses) vs az (managing individual materials).
Learn how the two tools complement each other in your development workflow.

**Exercise:**
Create a comparison table: when would you use `azd up` vs `az webapp create`?
Identify a scenario where you'd use both tools together in a single project.

---

#### Step 1.3: Reading the Blueprints
📚 **Read:** [Templates overview](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azd-templates)

**Summary:**
Discover what azd templates contain and how they organize your project.
Learn the standard folder structure (infra, src, azure.yaml) and what each component does.

**Exercise:**
Draw a diagram of an azd template structure with labels explaining each folder's purpose.
Browse the Awesome AZD gallery and bookmark 3 templates that interest you.

---

#### Step 1.4: Understanding Commands
📚 **Read:** [Commands overview](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azd-commands-overview)

**Summary:**
Learn the essential azd commands and how they map to development workflow stages.
Understand the relationship between commands and template structure.

**Exercise:**
Create a flowchart showing the typical sequence: init → auth → up → monitor → down.
Write what each command does in one sentence using the home building analogy.

---

### Phase 2: Your First Construction Project (Week 2)

#### Step 2.1: Setting Up Your Tools
📚 **Read:** [Install or update azd](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/install-azd)

**Summary:**
Install azd on your local machine (Windows, Mac, or Linux).
Verify installation and understand what additional tools get installed with azd.

**Exercise:**
Install azd using the appropriate method for your OS.
Run `azd version` and `azd help` to confirm installation and explore available commands.

---

#### Step 2.2: Your First House Build
📚 **Read:** [Quickstart: Deploy an azd template](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/get-started)

**Summary:**
Walk through the complete process of deploying your first application to Azure using azd.
Experience the entire workflow from template selection to live application in minutes.

**Exercise:**
Deploy the "hello-azd" template to Azure following the quickstart guide.
Access the deployed application URL and verify it works. Document the steps you took.

---

#### Step 2.3: Exploring the Blueprint
📚 **Read:** [Explore and customize a template](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/quickstart-explore-templates)

**Summary:**
Examine the structure of the hello-azd template in detail.
Learn how the src, infra folders, and azure.yaml work together.

**Exercise:**
Open the hello-azd project and identify where the infrastructure code lives.
Make a small change to the app (change a text string) and redeploy using `azd deploy`.

---

#### Step 2.4: Cleaning Up Your Site
📚 **Read:** Clean up resources section (in quickstart)

**Summary:**
Learn how to properly tear down Azure resources to avoid unexpected costs.
Understand what `azd down` does and when to use it.

**Exercise:**
Run `azd down` to delete your hello-azd resources.
Check the Azure Portal to verify all resources were removed from the resource group.

---

### Phase 3: Understanding the Building Blocks (Week 3)

#### Step 3.1: How Initialization Works
📚 **Read:** [Explore the azd init workflow](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azd-init-workflow)

**Summary:**
Learn the three init workflows: scan directory, select template, create minimal project.
Understand which workflow to choose based on your starting point.

**Exercise:**
Create an empty folder and run `azd init` three times (in three separate folders), trying each workflow option.
Compare what files get created in each scenario.

---

#### Step 3.2: The Magic of 'up'
📚 **Read:** [Explore the azd up workflow](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azd-up-workflow)

**Summary:**
Deep dive into what happens when you run `azd up` - provision, package, and deploy.
Understand the orchestration that makes one command do so much work.

**Exercise:**
Deploy a template with `azd up --debug` to see detailed output of each step.
Document the sequence of operations: what gets created first, second, third, etc.

---

#### Step 3.3: The azure.yaml Master Plan
📚 **Read:** [azure.yaml schema](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azd-schema)

**Summary:**
Learn the structure and syntax of the azure.yaml configuration file.
Understand how services are defined and mapped to Azure resources.

**Exercise:**
Open an azure.yaml file from a template and annotate each section with comments.
Try adding a new service definition (even if fictional) following the schema.

---

#### Step 3.4: What Languages Can You Build With?
📚 **Read:** [Supported languages and environments](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/supported-languages-environments)

**Summary:**
Discover which programming languages and frameworks azd supports.
Learn about supported Azure compute services (App Service, Container Apps, Functions, AKS).

**Exercise:**
Find a template that uses your preferred programming language.
Deploy it and examine how the language-specific build/deploy works differently.

---

### Phase 4: Becoming a Template Designer (Week 4)

#### Step 4.1: Converting Your App
📚 **Read:** [Start with your app code](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/start-with-app-code)

**Summary:**
Learn how to take an existing application and make it azd-compatible.
Use azd's intelligent scanning to auto-generate infrastructure code.

**Exercise:**
Take a simple app you've built (or clone a sample) and run `azd init` with "scan current directory".
Review the generated azure.yaml and infrastructure files to understand what azd detected.

---

#### Step 4.2: Starting from a Blueprint
📚 **Read:** [Start with an existing template](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/start-with-existing-template)

**Summary:**
Learn how to use a starter template and customize it for your specific needs.
Understand when to start from templates vs. generating from scratch.

**Exercise:**
Initialize the "Starter - Bicep" template and replace the sample app with your own code.
Update the azure.yaml to point to your application directory.

---

#### Step 4.3: Creating From Scratch
📚 **Read:** [Create a minimal template](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/create-minimal-template)

**Summary:**
Build an azd template from the ground up for maximum control.
Learn the minimum required files and structure for a working template.

**Exercise:**
Create a minimal template for a simple web app using the guide.
Successfully deploy it to Azure using only the files you created.

---

#### Step 4.4: Infrastructure as Code Basics
📚 **Read:** [Generate Bicep files](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/generate-bicep)

**Summary:**
Understand how to create infrastructure as code using Bicep.
Learn the basics of defining Azure resources declaratively.

**Exercise:**
Generate Bicep files for a web app + database scenario.
Read through the generated files and identify where each Azure resource is defined.

---

### Phase 5: Advanced Building Techniques (Week 5)

#### Step 5.1: Template Development Fundamentals
📚 **Read:** [Get started with template development](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/get-started-template-development)

**Summary:**
Learn best practices for creating reusable, shareable azd templates.
Understand template structure conventions and naming patterns.

**Exercise:**
Create a template following best practices for a specific tech stack you know.
Test it by deploying to a fresh environment and documenting any issues.

---

#### Step 5.2: Multi-Service Applications
📚 **Read:** [Compose feature overview](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azd-compose)

**Summary:**
Learn how to build complex applications with multiple interconnected services.
Use the compose feature to incrementally add services without manual IaC.

**Exercise:**
Start with a single service and use `azd add` to add a second service (like a database).
Verify the services can communicate with each other after deployment.

---

#### Step 5.3: Choosing Your IaC Tool
📚 **Read:** [Use Terraform for infrastructure as code](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/use-terraform-for-azd)

**Summary:**
Learn when and how to use Terraform instead of Bicep with azd.
Understand the tradeoffs between Bicep (Azure-native) and Terraform (multi-cloud).

**Exercise:**
Deploy a template that uses Terraform instead of Bicep.
Compare the .tf files to the .bicep files from a similar template - note differences.

---

#### Step 5.4: Container Apps Deep Dive
📚 **Read:** [Azure Container Apps workflows and strategies](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/aca-workflows)

**Summary:**
Learn best practices for deploying containerized applications with azd.
Understand scaling, revisions, and blue-green deployments with Container Apps.

**Exercise:**
Deploy an app to Container Apps and experiment with environment variables.
Scale your app manually in the portal, then update the infrastructure code to match.

---

### Phase 6: Automation & Production (Week 6)

#### Step 6.1: Setting Up CI/CD
📚 **Read:** [Explore azd support for CI/CD pipelines](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/configure-devops-pipeline)

**Summary:**
Learn how azd integrates with GitHub Actions and Azure Pipelines.
Understand the automated deployment pipeline workflow.

**Exercise:**
Run `azd pipeline config` to set up automated deployments for your template.
Make a code change, commit it, and watch the automated deployment happen.

---

#### Step 6.2: Customizing with Hooks
📚 **Read:** [Customize workflows using command and event hooks](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azd-extensibility)

**Summary:**
Learn how to extend azd with custom scripts that run before/after commands.
Automate additional setup tasks like seeding databases or running migrations.

**Exercise:**
Create a pre-deploy hook that runs database migrations.
Create a post-provision hook that outputs important connection strings.

---

#### Step 6.3: Configuration Management
📚 **Read:** [Manage config settings](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azd-config)

**Summary:**
Learn how to manage azd settings, defaults, and configurations.
Understand environment-specific configurations and secret management.

**Exercise:**
Set a default Azure location and subscription using `azd config`.
Create two environments (dev and prod) with different configuration values.

---

#### Step 6.4: Multi-Environment Management
📚 **Read:** Environment management documentation (via `azd env --help` and docs)

**Summary:**
Master creating and switching between multiple environments (dev, test, prod).
Learn how to manage environment-specific variables and settings.

**Exercise:**
Create three environments: dev, staging, and production.
Deploy the same application to all three with different configurations.

---

### Phase 7: Operations & Troubleshooting (Week 7)

#### Step 7.1: Monitoring Your Application
📚 **Read:** Monitor section (using `azd monitor` command documentation)

**Summary:**
Learn how to use azd to access Azure Monitor, Application Insights, and logs.
Understand how to diagnose issues with deployed applications.

**Exercise:**
Deploy an app and run `azd monitor` to see telemetry.
Generate some traffic to your app and watch the metrics update in real-time.

---

#### Step 7.2: Common Issues & Solutions
📚 **Read:** [Troubleshoot](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/troubleshoot)

**Summary:**
Learn common problems developers face with azd and their solutions.
Understand how to get help and report issues.

**Exercise:**
Intentionally break something (wrong region, missing permission) and practice troubleshooting.
Use the troubleshooting guide to diagnose and fix the issue.

---

#### Step 7.3: Frequently Asked Questions
📚 **Read:** [FAQ](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/faq)

**Summary:**
Get answers to common questions about azd behavior and best practices.
Learn about environment names, template structure, and command options.

**Exercise:**
Read through the FAQ and identify 5 questions you had while learning.
Document the answers in your own words to reinforce understanding.

---

#### Step 7.4: PowerShell-Specific Issues
📚 **Read:** [Troubleshoot PowerShell errors](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/troubleshoot-powershell)

**Summary:**
Learn about Windows/PowerShell-specific issues and solutions.
Understand execution policies and common PowerShell errors.

**Exercise (Windows users):**
Check your PowerShell execution policy and adjust if needed.
Practice running azd commands in both PowerShell and Command Prompt.

---

### Phase 8: Mastery & Best Practices (Week 8)

#### Step 8.1: Template Galleries & Discovery
📚 **Read:** [Explore the template galleries](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/azd-template-galleries)

**Summary:**
Learn how to discover and use community templates from Awesome AZD.
Understand template quality indicators and how to evaluate templates.

**Exercise:**
Browse Awesome AZD and find templates for 3 different scenarios (AI, web app, microservices).
Analyze one template in detail - what services does it use? How is it structured?

---

#### Step 8.2: Feature Maturity & Updates
📚 **Read:** [Feature versioning and release strategy](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/feature-versioning)

**Summary:**
Understand azd's alpha, beta, and GA feature lifecycle.
Learn how to stay updated with new features and breaking changes.

**Exercise:**
Check the current azd version and read the latest release notes.
Identify one alpha or beta feature you'd like to try and understand its limitations.

---

#### Step 8.3: Advanced Configuration
📚 **Read:** [Configure template sources](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/configure-template-sources)

**Summary:**
Learn how to configure custom template sources for organizational templates.
Understand how to create a private template registry for your team.

**Exercise:**
Add a custom template source pointing to a GitHub org or private registry.
List available templates from your custom source.

---

#### Step 8.4: Sovereign & Special Clouds
📚 **Read:** [Use azd in sovereign clouds](https://learn.microsoft.com/en-us/azure/developer/azure-developer-cli/sovereign-clouds)

**Summary:**
Learn how to deploy to Azure Government, Azure China, and other sovereign clouds.
Understand the configuration changes needed for different cloud environments.

**Exercise:**
Review the sovereign cloud configuration options (even if you don't have access).
Document the differences between public Azure and sovereign cloud deployments.

---

### Phase 9: Training & Certification (Ongoing)

#### Step 9.1: Official Training Path
📚 **Complete:** [Build and deploy azd templates - Learning Path](https://learn.microsoft.com/en-us/training/paths/azure-developer-cli)

**Summary:**
Follow Microsoft's official training path with hands-on modules.
Covers introduction, deployment/configuration, and building templates.

**Exercise:**
Complete all three modules in the learning path.
Earn the achievement badge and add it to your LinkedIn profile.

---

#### Step 9.2: Build Your First Template Module
📚 **Complete:** [Build your first Azure Developer CLI template](https://learn.microsoft.com/en-us/training/modules/build-first-azd-template/)

**Summary:**
Hands-on module walking through creating a complete azd template from scratch.
Includes IaC creation, service configuration, and CI/CD setup.

**Exercise:**
Complete the entire module including the final assessment.
Apply what you learned to create a template for your own project.

---

### Phase 10: Real-World Projects (Weeks 9-12)

#### Project 10.1: Personal Portfolio Site
**Goal:** Create and deploy your own portfolio website using azd

**Tasks:**
- Choose a web framework (Next.js, React, Blazor, etc.)
- Create an azd template from scratch for your site
- Add a database to store a blog or projects
- Set up CI/CD for automated deployments
- Configure a custom domain

---

#### Project 10.2: Full-Stack Application
**Goal:** Build a complete app with frontend, backend, and database

**Tasks:**
- Start with a template that matches your stack
- Customize the infrastructure to add additional services
- Implement authentication and data storage
- Add monitoring and alerts
- Create separate dev, staging, and prod environments

---

#### Project 10.3: Microservices Architecture
**Goal:** Deploy a multi-service application using azd compose

**Tasks:**
- Design a system with 3+ microservices
- Use azd compose to incrementally build the architecture
- Implement service-to-service communication
- Add a message queue or event hub
- Set up distributed tracing and monitoring

---

#### Project 10.4: Share Your Template
**Goal:** Create a reusable template and share it with the community

**Tasks:**
- Build a template for a common scenario in your domain
- Document it thoroughly with README and architecture diagrams
- Follow azd template best practices
- Test it with fresh deployments
- Consider contributing to Awesome AZD gallery

---

## 🎓 Completion Checklist

By the end of this roadmap, you should be able to:

- [ ] Explain what azd is and when to use it
- [ ] Install and configure azd on your machine
- [ ] Deploy an existing template to Azure
- [ ] Customize templates for your needs
- [ ] Create a new template from scratch
- [ ] Understand the azure.yaml configuration file
- [ ] Write basic Bicep or Terraform infrastructure code
- [ ] Set up CI/CD pipelines with azd
- [ ] Manage multiple environments (dev, staging, prod)
- [ ] Troubleshoot common deployment issues
- [ ] Use hooks to extend azd functionality
- [ ] Monitor deployed applications
- [ ] Share and collaborate on templates

---

## 📚 Quick Reference Commands

```bash
# Installation & Setup
azd version                    # Check azd version
azd auth login                 # Authenticate to Azure

# Template Management
azd init                       # Initialize a new project
azd init -t <template-name>    # Initialize from specific template
azd init --minimal             # Create minimal project structure

# Development Workflow
azd up                         # Provision and deploy everything
azd provision                  # Only provision infrastructure
azd deploy                     # Only deploy application code
azd down                       # Delete all resources

# Environment Management
azd env new                    # Create new environment
azd env list                   # List all environments
azd env select                 # Switch to different environment
azd env refresh                # Refresh environment settings

# Monitoring & Debugging
azd monitor                    # Open monitoring dashboards
azd show                       # Show deployed resources

# CI/CD
azd pipeline config            # Configure CI/CD pipeline

# Configuration
azd config set <key> <value>   # Set configuration value
azd config list                # Show all configuration

# Help
azd help                       # Show general help
azd <command> --help          # Show help for specific command
```

---

## 🌟 Next Steps After Completion

1. **Contribute**: Share your templates with the Awesome AZD community
2. **Explore**: Try templates for AI, IoT, or other specialized scenarios
3. **Deepen**: Learn advanced Bicep or Terraform techniques
4. **Teach**: Help others learn by writing blog posts or tutorials
5. **Integrate**: Incorporate azd into your team's development workflow

---

## 📖 Additional Resources

- [Awesome AZD Gallery](https://azure.github.io/awesome-azd/)
- [Azure Developer CLI GitHub](https://github.com/Azure/azure-dev)
- [Azure Developer CLI Discussions](https://github.com/Azure/azure-dev/discussions)
- [Azure Architecture Center](https://learn.microsoft.com/en-us/azure/architecture/)
- [Bicep Documentation](https://learn.microsoft.com/en-us/azure/azure-resource-manager/bicep/)
- [Terraform on Azure](https://learn.microsoft.com/en-us/azure/developer/terraform/)

---

**Remember:** Learning is a journey, not a destin