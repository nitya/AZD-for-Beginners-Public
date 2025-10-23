# 13. Challenge: Yourself

Welcome to the final chapter of your Azure Developer CLI journey! This is where you get to put everything you've learned into practice and truly make it your own.

You've come so far in this workshop. You've learned how to discover AZD templates, deploy AI solutions to Azure, deconstruct complex projects to understand their inner workings, and customize templates to fit specific needs. Now it's time to celebrate your progress by tackling some exciting challenges that will reinforce your learning and build your confidence as an Azure developer.

Think of these challenges as your graduation project - they're designed to be achievable with what you've learned, while still pushing you to think creatively and apply concepts in new ways. Don't worry if you need to refer back to earlier sections; that's a natural part of learning, and we've structured this workshop to make it easy to revisit concepts whenever you need them.

!!! quote ""

    **Objective:** Apply Your Learning Through Hands-On Challenges<br/>
    **Estimate:** 2-4 hours (depending on how many challenges you tackle) <br/>
    **Analogy:** [Flip Your Next Home](0-Welcome.md#2-the-home-builder-analogy)

    - [Challenge 1: Customize Your Kitchen](#challenge-1-customize-your-kitchen)
    - [Challenge 2: Move To A Bigger Home](#challenge-2-move-to-a-bigger-home)

---

## Challenge 1: Customize Your Kitchen

In our home-building analogy, you've successfully built your AI home and set up all the basic rooms and utilities. Now it's time to customize your kitchen - the heart of your AI application where the magic happens! This challenge will help you make meaningful changes to the template you've already deployed.

### What You'll Accomplish

By completing this challenge, you'll take the existing AI agent template and customize it to solve a different business problem or add new capabilities. This is similar to how you might renovate your kitchen to add new appliances, change the layout, or upgrade features while keeping the same foundational structure.

### Challenge Steps

#### Step 1: Choose Your Customization Path

Pick one of these customization scenarios that interests you:

• **Scenario A: Change the Domain**: Adapt the retail chatbot to a different industry (healthcare FAQs, education support, travel assistance, etc.). This helps you understand how to modify the agent's persona, knowledge base, and conversation flow.

• **Scenario B: Add New Features**: Enhance the existing retail chatbot with new capabilities like multi-language support, sentiment analysis, or product recommendations. This teaches you how to extend functionality while maintaining the core architecture.

• **Scenario C: Improve Performance**: Optimize the template for better cost-efficiency or faster response times by experimenting with different model configurations, caching strategies, or prompt engineering. This deepens your understanding of how different components affect overall performance.

#### Step 2: Plan Your Changes

Before making any modifications, create a simple plan that outlines:

• **What you want to change**: Be specific about the features, data, or configuration you'll modify.

• **Which files you'll need to update**: Think about whether your changes affect the source code (`src/`), infrastructure (`infra/`), or configuration (`azure.yaml`).

• **How you'll test your changes**: Define what "success" looks like for your customization.

This planning step mirrors real-world development practices and helps you think through your approach before diving into code.

#### Step 3: Make Your Customizations

Now it's time to implement your changes! Here are some specific areas you might modify:

• **Agent Configuration**: Update the agent's system prompt, persona, or behavior settings to match your new scenario.

• **Data Sources**: Add new data files, modify existing knowledge bases, or connect to different data sources that support your customization.

• **Model Selection**: Experiment with different AI models to find the best balance of performance, cost, and capability for your use case.

• **UI Updates**: Modify the web interface to reflect your new branding, add new features, or improve the user experience.

Remember to make changes incrementally - update one thing at a time, test it, and then move on to the next change. This approach makes it easier to identify and fix issues as they arise.

#### Step 4: Deploy and Test

Use what you've learned about the Azure Developer CLI to deploy your customized template:

```bash
azd up
```

This single command will provision any new resources you've added, deploy your code changes, and update your running application - just like we practiced in earlier modules!

After deployment, thoroughly test your customizations:

• **Functional Testing**: Does your AI agent respond correctly to questions in the new domain?

• **Performance Testing**: Are response times acceptable? Is the cost per interaction reasonable?

• **User Experience Testing**: Is the interface intuitive? Does the agent provide helpful, accurate information?

#### Step 5: Celebrate and Reflect

Take a moment to appreciate what you've built! You've taken a template and made it your own. Now reflect on your learning:

• What was easier than you expected? What concepts from the workshop helped you the most?

• What challenges did you encounter? How did you overcome them?

• What would you do differently next time?

This reflection helps solidify your learning and prepares you for future projects.

### Success Criteria

You'll know you've successfully completed this challenge when:

✅ Your customized application deploys without errors using `azd up`

✅ The AI agent responds appropriately to questions in your chosen domain or demonstrates your new features

✅ You can explain what you changed and why you made those specific choices

✅ You understand how your changes affected different parts of the template (source, infrastructure, configuration)

### Need Help?

If you get stuck, remember:

• Review the relevant modules from earlier in the workshop - they contain the answers to most questions you'll encounter

• Check the Azure Developer CLI documentation for command references and troubleshooting tips

• Use `azd` commands like `azd monitor` to investigate issues with your deployed application

• Start small - if a big change isn't working, try breaking it into smaller, testable pieces

---

## Challenge 2: Move To A Bigger Home

Ready to level up? This challenge is about starting fresh with a completely different AZD template and applying everything you've learned to understand and customize a new solution. It's like moving from your starter home to a bigger property - exciting, slightly overwhelming at first, but ultimately rewarding!

### What You'll Accomplish

In this challenge, you'll discover a new AZD template that solves a different problem, deploy it to Azure, deconstruct it to understand how it works, and then make meaningful customizations. This challenge demonstrates that the skills you've learned in this workshop are transferable to any AZD template, not just the one we focused on.

### Challenge Steps

#### Step 1: Discover a New Template

Use the skills you learned in the Discovery modules to find a new AZD template that interests you. You might explore:

• **AI Templates**: Other AI-powered applications like document intelligence, computer vision solutions, or different agent architectures.

• **Web Applications**: Full-stack web apps built with different frameworks (React, Vue, Angular) and backend technologies (Node.js, Python, .NET).

• **Data Solutions**: Templates that showcase data processing, analytics, or machine learning workflows.

• **Enterprise Scenarios**: Solutions that demonstrate authentication, API management, or microservices architectures.

Where to look:

• **Awesome AZD Gallery**: Browse curated templates at [awesome-azd.com](https://aka.ms/awesome-azd)

• **Azure-Samples Organization**: Explore official samples at [github.com/Azure-Samples](https://github.com/Azure-Samples)

• **AZD Template Gallery**: Search templates using `azd template list` or visit [azure.github.io/awesome-azd](https://azure.github.io/awesome-azd)

Choose a template that genuinely interests you - you'll be more motivated to explore and customize something you find exciting!

#### Step 2: Deploy Your New Template

Just like you did in the Deployment modules, use AZD to deploy your chosen template:

```bash
# Clone or initialize the template
azd init --template <template-name>

# Deploy to Azure
azd up
```

Watch the deployment process and notice:

• What Azure resources are being created? How do they differ from the AI agent template?

• How long does the deployment take? What steps are happening in what order?

• What environment variables or configuration values are you asked to provide?

This observation helps you understand the new template before diving into its code.

#### Step 3: Validate Your Deployment

Once deployment completes, verify that everything works correctly:

• Access the deployed application using the endpoint provided by AZD

• Test the core functionality - what does this application do? How does it work?

• Review the Azure resources in the portal - what services are being used?

Use monitoring and logging to understand the application's behavior, just like you learned in the Deconstruction modules.

#### Step 4: Deconstruct the New Template

Apply your deconstruction skills to understand this new codebase:

• **Explore `azure.yaml`**: What services are defined? How is the build and deployment process configured?

• **Review `infra/` folder**: What infrastructure is being provisioned? Can you identify the main Azure resources and how they connect?

• **Examine `src/` folder**: What's the application architecture? What programming languages and frameworks are used?

• **Check `.azure/` folder**: What environment variables are configured? How do they differ from the AI agent template?

• **Read the `README`**: What documentation is provided? What prerequisites or setup steps are required?

Take notes as you explore - this helps you build a mental model of how the template works.

#### Step 5: Plan Your Customization

Based on your understanding of the new template, identify a meaningful customization you'd like to make:

• What feature could you add or modify?

• What aspect of the infrastructure could you optimize or extend?

• What configuration changes would improve the solution for a specific use case?

Create a brief plan that outlines:

• The goal of your customization (what problem are you solving or what value are you adding?)

• The files you'll need to modify (source code, infrastructure, configuration)

• The steps you'll take to implement and test your changes

#### Step 6: Implement and Deploy

Make your customizations with confidence! You've done this before, just with a different template:

• Make changes incrementally, testing as you go

• Use `azd deploy` to deploy just the code changes, or `azd up` to update infrastructure

• Monitor the deployment and troubleshoot any issues that arise

• Validate that your customizations work as expected

#### Step 7: Reflect on Transferable Skills

This is the most important step! Take time to think about what you've learned:

• How did your experience with the first template help you understand this new one?

• What patterns or concepts were similar across both templates?

• What was different or unexpected about this template?

• How confident do you feel approaching a third template on your own?

This reflection helps you recognize that you've developed transferable skills that apply to any AZD template.

### Success Criteria

You'll know you've successfully completed this challenge when:

✅ You've successfully deployed a new AZD template that's different from the workshop's main template

✅ You understand the core architecture and can explain what the template does and how it works

✅ You've made and deployed at least one meaningful customization to the template

✅ You can identify similarities and differences between this template and the AI agent template

✅ You feel confident that you could repeat this process with yet another template

### Stretch Goals

Feeling ambitious? Try these additional challenges:

• **Compare and Contrast**: Create a document comparing the two templates you've worked with - what architectural decisions were different? Why?

• **Hybrid Solution**: Can you combine elements from both templates to create something new? For example, adding AI capabilities to a web app template.

• **Share Your Learning**: Write a blog post or create a tutorial explaining what you learned from exploring the new template.

• **Contribute Back**: Found ways to improve the template? Consider opening a pull request or issue on the template's GitHub repository!

### Need Help?

Remember these resources:

• The Discovery, Deployment, Deconstruction, and Customization modules all apply to any AZD template

• The Azure Developer CLI documentation has comprehensive guides and references

• Template README files typically contain important setup and usage information

• The AZD community is friendly and helpful - don't hesitate to ask questions on GitHub Discussions or Stack Overflow

---

## 🎉 Congratulations!

Whether you completed one challenge or both, you should be incredibly proud of yourself. You've gone from learning about AZD to confidently deploying, understanding, and customizing sophisticated Azure solutions. These are valuable, real-world skills that many professional developers are still learning.

### What You've Achieved

Through this workshop, you've:

• **Mastered AZD Fundamentals**: You understand what the Azure Developer CLI is, why it matters, and how to use it effectively.

• **Learned Template Discovery**: You can find, evaluate, and select appropriate AZD templates for different scenarios.

• **Practiced Deployment**: You've deployed complex AI solutions to Azure with just a few commands.

• **Developed Deconstruction Skills**: You can examine an unfamiliar codebase and understand its architecture, infrastructure, and configuration.

• **Gained Customization Confidence**: You're able to modify templates to fit specific needs and requirements.

• **Built Transferable Skills**: The knowledge you've gained applies to any AZD template, not just the ones we focused on.

### Where to Go Next

Your learning journey doesn't end here! Here are some ways to continue growing:

• **Explore More Templates**: The [Awesome AZD gallery](https://aka.ms/awesome-azd) has dozens of templates to explore.

• **Build Your Own Template**: Create an AZD template for a project you're working on - this deepens your understanding even further.

• **Join the Community**: Participate in Azure Developer CLI discussions, share your experiences, and help others learn.

• **Stay Updated**: Follow Azure Developer CLI releases and announcements to learn about new features and capabilities.

• **Practice Regularly**: The best way to retain what you've learned is to use it! Incorporate AZD into your regular development workflow.

### Final Thoughts

Learning new development tools and practices can be challenging, but you've shown that with patience, practice, and the right guidance, complex concepts become manageable and even enjoyable. The confidence you've built through this workshop will serve you well in future learning adventures.

Remember: every expert was once a beginner. You've taken important steps on your journey to mastering Azure development, and you should be proud of the progress you've made. Keep practicing, stay curious, and don't be afraid to experiment and make mistakes - that's how real learning happens!

Thank you for completing this workshop. We hope you found it valuable, and we can't wait to see what amazing solutions you'll build with Azure Developer CLI! 🚀

### Share Your Success

We'd love to hear about your experience! Consider:

• Sharing what you built on social media with #AzureDeveloperCLI and #AZD

• Writing about your learning journey on your blog or LinkedIn

• Contributing to the AZD community by sharing templates, tips, or lessons learned

Your success story might inspire the next beginner to start their AZD journey!

---

!!! success "You Did It! 🎊"
    You've completed the Azure Developer CLI for Beginners workshop. Take a moment to celebrate your achievement, reflect on how far you've come, and get excited about all the amazing things you'll build with your new skills!
