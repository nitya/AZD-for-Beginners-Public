# 2. Discover: Templates 

!!! quote ""

    **Objective:** Discover what an AZD template is and how it works with AZD. <br/>
    **Estimate:** 5 mins <br/>
    **Analogy:** [Learn about Blueprints](0-Welcome.md#2-the-home-builder-analogy)

    - [What are AZD Templates?](#what-are-azd-templates)
    - [What's in a Blueprint Package?](#whats-in-a-blueprint-package)
    - [Exercise: Explore Template Commands](#exercise-explore-template-commands)

---

## What are AZD Templates?

An AZD template is like the "pre-fab home" design blueprints that your contractor can use to jumpstart construction on your home. In more practical terms, this includes:

- **Infrastructure-as-code assets** (`infra/`) - The materials for assembling the home
- **Starter App Code** (`src/`) - The default interior design (app) available for the home
- **Configuration Files** (`azure.yaml`) - Instructions for when and how to assemble things
- **Envrionment Properties** (`.azure/`) - The required utility accounts and passwords to run it

The benefit of these templates is their _standard format and structure_ giving you consistent and repeatable results across the team. Once you've learned to work with one template, its easy to extend those learnings to new templates or customization.

You can start with an application codebase and _create the template_ for it - or you can discover existing templates and _initialize your codebase_ from them. Let's see how.

## How do I create a new template?

If you already have a repository that contains your application source code, you can convert it into an AZD template by following the four-step process in the diagram below. **See:** [Make your project compatible with azd](https://learn.microsoft.com/azure/developer/azure-developer-cli/make-azd-compatible) for more details.

![Create template](./../assets/Core-Labs/02-create-template.png)

1. Run `azd init` to initialize the project structure in that repo
1. Create the `infra/` folder to add relevant infrastructure-as-code files
1. Update the `azure.yaml` file to connect the infra and source components
1. Document the `README.md` to describe your solution architecture and usage
1. Provision and deploy your application with an `azd up`

!!! quote ""

    This is NOT the option we will take in this workshop - read the docs to learn more.

## How do I find existing templates?

Three main ways to find the perfect blueprint for your project:

1. **Official CLI** - Use `azd template list` to browse curated templates
1. **Community Gallery** - Visit [Awesome AZD](https://aka.ms/awesome-azd) for community-created templates
1. **AI Apps Gallery** - Discover [Curated Templates](https://ai.azure.com/templates) for Azure AI Foundry
1. **GitHub Topics** - Search GitHub by the [`azd-templates`](https://github.com/topics/azd-templates) topic

Of these, options like the AI Apps Gallery are _Microsoft maintained_ templates that offer a curated set of templates built by Microsoft teams for popular solution architectures and scenarios.

!!! quote ""

    In this workshop, we want to focus on showcasing _azd_ usage so let's explore option 1.


## Exercise: Template Commands

!!! lab "In this exercise, you'll use `azd template` commands to browse blueprint catalogs and discover what's available - just like visiting a model home showroom!"


### 1. View Template Commands

1. Run this command from VS Code terminal

    ```bash title="" linenums="0"
    azd template --help
    ```

1. You should see something like this:

    ```bash title="" linenums="0"
    View details of your current template or browse a list of curated sample templates. (Beta)

    • The azd CLI includes a curated list of sample templates viewable by running azd template list.
    • To view all available sample templates, including those submitted by the azd community visit: https://azure.github.io/awesome-azd.
    • Running azd init without a template will prompt you to start with a minimal template or select from our curated list of samples.

    Usage
    azd template [command]

    Available Commands
    list          : Show list of sample azd templates. (Beta)
    show          : Show details for a given template. (Beta)
    source        : View and manage template sources. (Beta)

    ...
    ...
    ```

1. Here "sources" refer to locations that host template or template collections. This could be a GitHub repository (single template) or a Template Gallery (templates collection). 

Let's go through these three commands.

### 2. View Template Sources

1. Run this command from VS Code terminal

    ```bash title="" linenums="0"
    azd template source
    ```

1. You should see something like this:

    ```bash title="" linenums="0"

    View and manage azd template sources used within azd template list and azd init experiences. (Beta)

    • Template sources allow customizing the list of available templates to include additional local or remote files and urls.
    • Running azd init without a template will prompt you to start with a minimal template or select from a template from your registered template sources.

    Usage
    azd template source [command]

    ...
    ...
    ```

1. The command allows you to `list`, `add` and `remove` sources from the _azd_ tool to help provide default context or scope to future azd operations involving templates. Try listing the sources:

    ```bash title="" linenums="0"
    azd template source list
    ```

1. You should see something like this:

    ```bash title="" linenums="0"
    Key          Name         Type         Location
    awesome-azd  Awesome AZD  awesome-azd  https://aka.ms/awesome-azd/templates.json
    ```

1. This tells us that the only default _source_ available is the community-driven templates gallery ("awesome-azd").



### 3. View Templates List

You can now ask azd to show you a list of accessible _templates_ from all the sources it knows of. 

1. Run this command from VS Code terminal

    ```bash title="" linenums="0"
    azd template list
    ```

1. You should see something like this:

    ```bash title="" linenums="0"
    Name                        Source       Repository Path
    Deploy Phoenix to Azure     Awesome AZD  Arize-ai/phoenix-on-azure
    API Center Reference Sample Awesome AZD  Azure-Samples/APICenter-Reference
    ...
    ...
    ```

1. Notice how all the sources currently are "Awesome AZD" since that is the only source listed.

### 4. Filter Templates By Query

Want to see the subset of templates that match a specific filter term? Two options exist:

1. Use the `azd` filter option

    ```bash title="" linenums="0"
    azd template list - f "ai"
    ```

2. Run the command and pass the results through a grep filter

    ```bash title="" linenums="0"
    azd template list | grep -i "AI"
    ```

The second command may result in a larger set of matches since it looks for string matches in the output from the core list without necessarily understanding the context.


### 5. View Template Details

Once you see a template name that looks interesting, you can dive in to learn more. Let's try this.

1. Suppose you want a template that showcases the new Sora Video Generation model.

    ```bash title="" linenums="0"
    azd template list | grep -i "sora"
    ```

1. You should see a result like this - there is 1 template from the community!

    ```bash title="" linenums="0"
    Azure AI Foundry with Sora Video Generation Model  Awesome AZD  petender/azd-foundrysora
    ```

1. I can now ask for more details:

    ```bash title="" linenums="0"
    azd template show petender/azd-foundrysora
    ```

1. And will get something like this that tells me what the template does (description) and what keywords it might map to (filter) if I want to look for other templates like this. It also gives me the template repository information which I can use to initialize the template to try it out.

    ```bash title="" linenums="0"
    RepositoryPath : petender/azd-foundrysora
    Name           : Azure AI Foundry with Sora Video Generation Model
    Source         : Awesome AZD
    Description    : This scenario deploys an Azure AI Foundry Hub and Project, with the Sora Video Generation Model. The demo scenario relies on the Video Playground, but you could also use it in your own application.
    Tags           : community, azureai, aifoundry, openai
    ```

### 6. AI App Tenplates

But we have a problem - the current azd command only looks at the community gallery as a source. But we want to use a curated template from the Azure AI Foundry collection. How do we do that? _We'll look at that problem, next!_

### 7. Ask Copilot For Help

Want to explore more? Try asking Copilot:

!!! prompt "ASK COPILOT"

    1. What does infrastructure-as-code mean? 
    1. What's the difference between a Bicep template and an AZD template?
    1. Give me step-by-step instructions for creating an AZD template from my project repo

---

**Next:** Let's explore the template galleries - special showrooms with curated blueprint collections for common scenarios!