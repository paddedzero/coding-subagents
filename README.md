# AI Coding Agents Collection

<div align="center">

[![Awesome](https://awesome.re/badge.svg)](https://awesome.re)
[![Last Update](https://img.shields.io/github/last-commit/paddedzero/coding-subagents?label=Last%20update)](https://github.com/paddedzero/coding-subagents)
[![License](https://img.shields.io/github/license/paddedzero/coding-subagents)](LICENSE)

**The ultimate collection of specialized AI agents for Claude Code and GitHub Copilot**

*127 expert agents spanning every aspect of software development*

</div>

---

## 🎯 What is This?

This repository provides **production-ready AI coding agents** designed to supercharge your development workflow with AI assistance. Whether you're using **Claude Code** or **GitHub Copilot**, these agents act as specialized experts that understand context, follow best practices, and deliver high-quality code.

### Why Use AI Coding Agents?

**Without Agents:** Generic AI assistance that treats every task the same way.

**With Agents:** Specialized experts who know:
- ✅ Language-specific idioms and best practices
- ✅ Framework conventions and patterns
- ✅ Security considerations and compliance requirements
- ✅ Performance optimization techniques
- ✅ Testing strategies and debugging approaches
- ✅ Industry standards and modern tooling

### What Makes These Agents Special?

- 🎯 **Specialized Expertise**: Each agent is crafted for specific domains, languages, or tasks
- 🏗️ **Production-Ready**: Tested patterns and real-world best practices
- 🔧 **Optimized Tool Access**: Agents only use the tools they need (read, write, search, terminal)
- 📚 **Comprehensive Coverage**: 127 agents across 10 categories
- 🔄 **Dual Format**: Available for both Claude Code and GitHub Copilot
- 🔒 **Security Audited**: All agents certified safe with no malicious patterns
- 📖 **Well-Documented**: Clear instructions and usage examples

---

## 🚀 Quick Start

### Choose Your AI Platform

<table>
<tr>
<td width="50%">

### 🤖 Claude Code
**Best for:** Deep reasoning, complex refactoring, architecture design

```bash
# Browse and use agents directly
cd claudecode-subagents/
# Agents organized by category
# Copy agent definition into Claude Code
```

**Format:** Markdown files with YAML frontmatter
**Usage:** Copy agent text into Claude Code chat

</td>
<td width="50%">

### 💬 GitHub Copilot
**Best for:** Inline suggestions, quick completions, VSCode integration

```bash
# Install agents
cp copilot-github-agents/*.agent.md ~/.copilot/agents/

# Windows
Copy-Item copilot-github-agents\*.agent.md $HOME\.copilot\agents\
```

**Format:** `.agent.md` files with JSON tool arrays
**Usage:** Type `@agent-name` in Copilot Chat

</td>
</tr>
</table>

---

## 📚 Agent Categories

### 🔧 Core Development (10 agents)
Essential development roles for everyday coding tasks.
- API Design & GraphQL Architecture
- Backend & Frontend Development
- Full-Stack & Microservices
- Mobile & Desktop Applications
- Real-Time Communication

[**Browse Core Development →**](claudecode-subagents/01-core-development/)

### 💻 Language Specialists (26 agents)
Deep expertise in specific programming languages and frameworks.
- **Modern Languages**: TypeScript, Python, Rust, Go, Kotlin
- **Enterprise**: Java, C#, .NET Core, Spring Boot
- **Web Frameworks**: React, Vue, Angular, Next.js, Django, Laravel, Rails
- **Systems**: C++, Swift, Elixir
- **Automation**: PowerShell 5.1 & 7

[**Browse Language Specialists →**](claudecode-subagents/02-language-specialists/)

### ☁️ Infrastructure (14 agents)
DevOps, cloud platforms, and deployment automation.
- Cloud Architecture (Azure, Multi-Cloud)
- Container Orchestration (Kubernetes)
- Infrastructure as Code (Terraform)
- CI/CD & Deployment
- Database Administration
- Site Reliability Engineering
- Network & Security Engineering

[**Browse Infrastructure →**](claudecode-subagents/03-infrastructure/)

### 🔒 Quality & Security (14 agents)
Testing, security auditing, and code quality assurance.
- Code Review & Architecture Review
- Security Auditing & Penetration Testing
- Test Automation & QA
- Performance Engineering
- Chaos Engineering
- Compliance Auditing
- Accessibility Testing
- Debugging & Error Analysis

[**Browse Quality & Security →**](claudecode-subagents/04-quality-security/)

### 🤖 Data & AI (12 agents)
Machine learning, data engineering, and AI systems.
- ML/AI Engineering & MLOps
- Data Science & Analytics
- Data Engineering & Pipelines
- Database Optimization
- LLM Architecture & Prompt Engineering
- NLP Engineering
- PostgreSQL Specialization

[**Browse Data & AI →**](claudecode-subagents/05-data-ai/)

### 🛠️ Developer Experience (13 agents)
Tools, workflows, and productivity enhancements.
- Build Systems & Tooling
- Git Workflow Management
- Documentation Engineering
- CLI Development
- Dependency Management
- Refactoring & Legacy Modernization
- PowerShell Module Architecture
- MCP (Model Context Protocol) Development
- Slack Integration

[**Browse Developer Experience →**](claudecode-subagents/06-developer-experience/)

### 🎮 Specialized Domains (12 agents)
Industry-specific and niche expertise.
- FinTech & Quantitative Analysis
- Blockchain & Web3
- IoT & Embedded Systems
- Game Development
- Mobile App Development
- Payment Integration
- API Documentation
- SEO Optimization
- Microsoft 365 Administration
- Risk Management

[**Browse Specialized Domains →**](claudecode-subagents/07-specialized-domains/)

### 📊 Business & Product (11 agents)
Product management, business analysis, and content creation.
- Product & Project Management
- Business Analysis
- Technical Writing & Documentation
- UX Research
- Content Marketing
- Sales Engineering
- Customer Success
- Legal Advisory
- Scrum Master
- WordPress Development

[**Browse Business & Product →**](claudecode-subagents/08-business-product/)

### 🎭 Meta & Orchestration (9 agents)
Multi-agent coordination and workflow management.
- Agent Organization & Coordination
- Workflow Orchestration
- Task Distribution
- Context Management
- Error Coordination
- Performance Monitoring
- Knowledge Synthesis
- IT Operations Orchestration

[**Browse Meta & Orchestration →**](claudecode-subagents/09-meta-orchestration/)

### 🔍 Research & Analysis (6 agents)
Information gathering, market research, and competitive intelligence.
- Research & Data Analysis
- Market Research
- Competitive Analysis
- Search Specialization
- Trend Analysis

[**Browse Research & Analysis →**](claudecode-subagents/10-research-analysis/)

---

## 💡 How AI Agents Transform Your Workflow

### Example: Building a REST API

**Without Agents:**
```
You: "Help me create a REST API for user management"
AI: Generic response with basic CRUD operations
```

**With @core-api-designer:**
```
You: "@core-api-designer help me create a REST API for user management"
AI: 
✅ OpenAPI 3.1 specification
✅ Proper HTTP status codes and error handling
✅ Authentication patterns (OAuth 2.0, JWT)
✅ Rate limiting configuration
✅ Pagination strategies
✅ API versioning approach
✅ Security best practices
✅ Performance optimization
✅ Comprehensive documentation
```

### Example: Code Review

**Without Agents:**
```
You: "Review this code"
AI: Basic syntax check and generic suggestions
```

**With @quality-code-reviewer:**
```
You: "@quality-code-reviewer review this authentication module"
AI:
✅ Security vulnerability analysis
✅ Design pattern evaluation
✅ Performance optimization suggestions
✅ Test coverage assessment
✅ Code maintainability score
✅ Technical debt identification
✅ Best practices compliance
✅ Specific actionable improvements
```

---

## 📦 Installation & Usage

### For Claude Code Users

1. **Browse Categories**: Navigate to [`claudecode-subagents/`](claudecode-subagents/) folder
2. **Choose Agent**: Find the specialist you need
3. **Copy Definition**: Copy the entire agent markdown
4. **Use in Claude**: Paste into Claude Code to activate the agent
5. **Customize**: Modify based on your project needs

**Agent Format:**
```yaml
---
name: api-designer
description: API architecture expert...
tools: Read, Write, Edit, Bash, Glob, Grep
---
[Agent personality and instructions...]
```

### For GitHub Copilot Users

#### Global Installation (All Projects)
```bash
# Linux/Mac
cp copilot-github-agents/*.agent.md ~/.copilot/agents/

# Windows PowerShell
Copy-Item copilot-github-agents\*.agent.md $HOME\.copilot\agents\
```

#### Project-Specific Installation
```bash
# Create project agents directory
mkdir -p .github/agents

# Copy agents
cp copilot-github-agents/*.agent.md .github/agents/
```

#### Usage in VSCode
1. Open GitHub Copilot Chat (`Ctrl+Alt+I` or `Cmd+Alt+I`)
2. Type `@` to see available agents
3. Select or type `@agent-name your-question`

**Examples:**
```
@core-api-designer design a REST API for e-commerce checkout
@lang-python-pro refactor this code with async/await patterns
@quality-security-auditor review this authentication implementation
@infra-kubernetes-specialist help with this deployment manifest
@data-ml-engineer optimize this model training pipeline
```

---

## 🎯 Common Use Cases

### 🏗️ Architecture & Design
- `@core-api-designer` - Design REST/GraphQL APIs
- `@core-microservices-architect` - Plan distributed systems
- `@quality-architect-reviewer` - Review system design
- `@core-graphql-architect` - Build GraphQL schemas

### 💻 Development & Implementation
- `@lang-python-pro` - Python best practices
- `@lang-typescript-pro` - Type-safe TypeScript
- `@core-backend-developer` - Scalable APIs
- `@core-frontend-developer` - Modern UI components

### 🔒 Security & Compliance
- `@quality-security-auditor` - Security assessments
- `@quality-penetration-tester` - Vulnerability testing
- `@quality-compliance-auditor` - Regulatory compliance
- `@infra-security-engineer` - Infrastructure security

### ☁️ DevOps & Infrastructure
- `@infra-kubernetes-specialist` - K8s deployments
- `@infra-terraform-engineer` - IaC automation
- `@infra-devops-engineer` - CI/CD pipelines
- `@infra-sre-engineer` - Reliability engineering

### 🧪 Testing & Quality
- `@quality-test-automator` - Test frameworks
- `@quality-qa-expert` - QA strategies
- `@quality-performance-engineer` - Performance optimization
- `@quality-debugger` - Bug investigation

### 📊 Data & ML
- `@data-ml-engineer` - ML pipelines
- `@data-llm-architect` - LLM applications
- `@data-data-engineer` - Data pipelines
- `@data-prompt-engineer` - Prompt optimization

---

## 🔄 Syncing Updates

Keep your agents up to date:

```bash
# Clone or pull latest
git clone https://github.com/paddedzero/coding-subagents.git
cd coding-subagents
git pull

# Update GitHub Copilot agents
cp copilot-github-agents/*.agent.md ~/.copilot/agents/

# Windows
Copy-Item copilot-github-agents\*.agent.md $HOME\.copilot\agents\
```

---

## 🔒 Security

All agents have been thoroughly audited for security:

✅ **No malicious patterns** - Scanned for 30+ attack vectors  
✅ **No prompt injection** - Clean of jailbreak attempts  
✅ **No code injection** - Safe from eval/exec patterns  
✅ **Industry-standard practices** - Only legitimate technical content  
✅ **Certified safe** - See [SECURITY-AUDIT.md](copilot-github-agents/SECURITY-AUDIT.md)

---

## 📊 Statistics

- **Total Agents**: 127
- **Categories**: 10
- **Supported Languages**: 25+
- **Formats**: Claude Code & GitHub Copilot
- **Lines of Expertise**: 31,000+
- **Security Status**: ✅ Certified Safe

---

## 🤝 Contributing

We welcome contributions! Here's how:

1. **Add New Agents**: Follow existing format and naming conventions
2. **Improve Existing**: Enhance agent capabilities or documentation
3. **Report Issues**: Let us know about bugs or suggestions
4. **Share Use Cases**: Show how you're using the agents

---

## 📖 Documentation

- **Claude Code Agents**: [claudecode-subagents/README.md](claudecode-subagents/README.md)
- **GitHub Copilot Agents**: [copilot-github-agents/README.md](copilot-github-agents/README.md)
- **Security Audit**: [copilot-github-agents/SECURITY-AUDIT.md](copilot-github-agents/SECURITY-AUDIT.md)
- **Conversion Tools**: Scripts in root directory

---

## 💼 Real-World Benefits

### Time Savings
- **Code Review**: 50% faster with specialized reviewers
- **API Design**: Get architecture right the first time
- **Debugging**: Systematic approaches to complex issues
- **Testing**: Comprehensive test coverage strategies

### Quality Improvements
- **Best Practices**: Industry-standard patterns automatically
- **Security**: Built-in security considerations
- **Performance**: Optimization guidance from specialists
- **Maintainability**: Clean, documented code

### Learning & Growth
- **Expert Knowledge**: Learn from specialized agents
- **Pattern Recognition**: See how experts approach problems
- **Best Practices**: Absorb industry standards
- **Continuous Improvement**: Always up-to-date expertise

---

## 🎓 Learning Resources

Each agent serves as a **living documentation** of best practices:
- See how experts structure solutions
- Learn framework-specific patterns
- Understand security implications
- Discover optimization techniques

---

## 📜 License

See [LICENSE](LICENSE) file for details.

---

## 🌟 Star History

If you find these agents helpful, please star the repository!

---

## 🔗 Related Projects

- [VoltAgent](https://github.com/VoltAgent/voltagent) - Multi-agent orchestration platform
- [Claude Code](https://claude.ai/code) - AI-powered code editor
- [GitHub Copilot](https://github.com/features/copilot) - AI pair programmer

---

<div align="center">

**Made with ❤️ for the developer community**

[Report Bug](https://github.com/paddedzero/coding-subagents/issues) · [Request Feature](https://github.com/paddedzero/coding-subagents/issues) · [Contribute](CONTRIBUTING.md)

</div>
