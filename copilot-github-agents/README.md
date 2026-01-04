# GitHub Copilot Custom Agents

This folder contains custom GitHub Copilot agents converted for use with VSCode, github.dev, and other Copilot-enabled environments.

## Installation

### For Local VSCode
```bash
# Copy all agents to your Copilot directory
cp copilot-github-agents/*.agent.md ~/.copilot/agents/
```

### For Windows
```powershell
# Copy all agents to your Copilot directory
Copy-Item copilot-github-agents\*.agent.md $HOME\.copilot\agents\
```

### For Specific Projects
```bash
# Copy to project's .github/agents directory
mkdir -p .github/agents
cp copilot-github-agents/*.agent.md .github/agents/
```

## Available Agents

### Core Development (10 agents)
- `@core-api-designer` - API architecture expert designing scalable, developer-friendly interfaces
- `@core-backend-developer` - Senior backend engineer specializing in scalable API development
- `@core-electron-pro` - Desktop application specialist building secure cross-platform solutions
- `@core-frontend-developer` - Expert UI engineer focused on crafting robust, scalable frontend solutions
- `@core-fullstack-developer` - End-to-end feature owner with expertise across the entire stack
- `@core-graphql-architect` - GraphQL schema architect designing efficient, scalable API graphs
- `@core-microservices-architect` - Distributed systems architect designing scalable microservice ecosystems
- `@core-mobile-developer` - Cross-platform mobile specialist building performant native experiences
- `@core-ui-designer` - Expert visual designer specializing in creating intuitive, beautiful interfaces
- `@core-websocket-engineer` - Real-time communication specialist implementing scalable WebSocket architectures

### Language Specialists (26 agents)
- `@lang-angular-architect` - Expert Angular architect mastering Angular 15+ with enterprise patterns
- `@lang-cpp-pro` - Expert C++ developer specializing in modern C++20/23 and systems programming
- `@lang-csharp-developer` - Expert C# developer specializing in modern .NET development
- `@lang-django-developer` - Expert Django developer mastering Django 4+ with modern Python practices
- `@lang-dotnet-core-expert` - Expert .NET Core specialist mastering .NET 10 with modern C# features
- `@lang-dotnet-framework-4.8-expert` - Expert .NET Framework 4.8 specialist for legacy enterprise applications
- `@lang-elixir-expert` - Expert Elixir developer specializing in concurrent, fault-tolerant systems
- `@lang-flutter-expert` - Expert Flutter specialist mastering Flutter 3+ with modern architecture patterns
- `@lang-golang-pro` - Expert Go developer specializing in high-performance systems and microservices
- `@lang-java-architect` - Senior Java architect specializing in enterprise-grade applications
- `@lang-javascript-pro` - Expert JavaScript developer specializing in modern ES2023+ features
- `@lang-kotlin-specialist` - Expert Kotlin developer specializing in coroutines and multiplatform development
- `@lang-laravel-specialist` - Expert Laravel specialist mastering Laravel 10+ with modern PHP practices
- `@lang-nextjs-developer` - Expert Next.js developer mastering Next.js 14+ with App Router
- `@lang-php-pro` - Expert PHP developer specializing in modern PHP 8.3+ with strong typing
- `@lang-powershell-5.1-expert` - Expert PowerShell 5.1 specialist for Windows automation
- `@lang-powershell-7-expert` - Expert PowerShell 7+ specialist for cross-platform automation
- `@lang-python-pro` - Expert Python developer specializing in modern Python 3.11+ development
- `@lang-rails-expert` - Expert Rails specialist mastering Rails 8.1 with modern conventions
- `@lang-react-specialist` - Expert React developer mastering React 18+ with modern patterns
- `@lang-rust-engineer` - Expert Rust engineer specializing in memory-safe systems programming
- `@lang-spring-boot-engineer` - Expert Spring Boot engineer specializing in enterprise Java microservices
- `@lang-sql-pro` - Expert SQL developer specializing in advanced query optimization
- `@lang-swift-expert` - Expert Swift developer specializing in iOS/macOS development
- `@lang-typescript-pro` - Expert TypeScript developer specializing in type-safe applications
- `@lang-vue-expert` - Expert Vue developer mastering Vue 3 with Composition API

### Infrastructure (14 agents)
- `@infra-azure-infra-engineer` - Expert Azure infrastructure engineer specializing in cloud architecture
- `@infra-cloud-architect` - Multi-cloud architect designing scalable cloud-native solutions
- `@infra-database-administrator` - Expert DBA specializing in database performance and reliability
- `@infra-deployment-engineer` - Deployment specialist mastering CI/CD pipelines and automation
- `@infra-devops-engineer` - Expert DevOps engineer specializing in infrastructure automation
- `@infra-devops-incident-responder` - DevOps incident specialist for rapid problem resolution
- `@infra-incident-responder` - Incident response specialist for system reliability
- `@infra-kubernetes-specialist` - Kubernetes expert specializing in container orchestration
- `@infra-network-engineer` - Network specialist designing secure, scalable network architectures
- `@infra-platform-engineer` - Platform engineering expert building developer platforms
- `@infra-security-engineer` - Security engineer specializing in infrastructure security
- `@infra-sre-engineer` - Site Reliability Engineer ensuring system reliability and performance
- `@infra-terraform-engineer` - Infrastructure as Code specialist mastering Terraform
- `@infra-windows-infra-admin` - Windows infrastructure specialist for enterprise environments

### Quality & Security (14 agents)
- `@quality-accessibility-tester` - Expert accessibility tester specializing in WCAG compliance
- `@quality-ad-security-reviewer` - Active Directory security reviewer
- `@quality-architect-reviewer` - Expert architecture reviewer specializing in system design validation
- `@quality-chaos-engineer` - Expert chaos engineer specializing in resilience testing
- `@quality-code-reviewer` - Expert code reviewer specializing in code quality and best practices
- `@quality-compliance-auditor` - Expert compliance auditor specializing in regulatory frameworks
- `@quality-debugger` - Expert debugger specializing in complex issue diagnosis
- `@quality-error-detective` - Expert error detective specializing in error pattern analysis
- `@quality-penetration-tester` - Expert penetration tester specializing in ethical hacking
- `@quality-performance-engineer` - Expert performance engineer specializing in system optimization
- `@quality-powershell-security-hardening` - PowerShell security hardening specialist
- `@quality-qa-expert` - Expert QA engineer specializing in comprehensive quality assurance
- `@quality-security-auditor` - Expert security auditor specializing in comprehensive security assessments
- `@quality-test-automator` - Expert test automation engineer specializing in robust test frameworks

### Data & AI (12 agents)
- `@data-ai-engineer` - Expert AI engineer specializing in machine learning systems
- `@data-data-analyst` - Expert data analyst specializing in data insights and visualization
- `@data-data-engineer` - Expert data engineer specializing in data pipelines and architecture
- `@data-data-scientist` - Expert data scientist specializing in statistical analysis and ML
- `@data-database-optimizer` - Database optimization specialist for query performance
- `@data-llm-architect` - Large Language Model architect specializing in LLM applications
- `@data-machine-learning-engineer` - Expert ML engineer specializing in production ML systems
- `@data-ml-engineer` - Machine learning engineer for ML model development
- `@data-mlops-engineer` - MLOps engineer specializing in ML operations and deployment
- `@data-nlp-engineer` - Natural Language Processing engineer specializing in NLP systems
- `@data-postgres-pro` - PostgreSQL specialist for advanced database optimization
- `@data-prompt-engineer` - Prompt engineering specialist for LLM optimization

### Developer Experience (13 agents)
- `@devex-build-engineer` - Build systems specialist optimizing compilation and deployment
- `@devex-cli-developer` - Command-line interface developer specializing in developer tools
- `@devex-dependency-manager` - Dependency management specialist for package ecosystems
- `@devex-documentation-engineer` - Documentation engineer specializing in technical documentation
- `@devex-dx-optimizer` - Developer experience optimizer improving developer workflows
- `@devex-git-workflow-manager` - Git workflow specialist for version control strategies
- `@devex-legacy-modernizer` - Legacy code modernization specialist
- `@devex-mcp-developer` - Model Context Protocol developer for LLM integrations
- `@devex-powershell-module-architect` - PowerShell module architect for module development
- `@devex-powershell-ui-architect` - PowerShell UI architect for interactive console applications
- `@devex-refactoring-specialist` - Refactoring specialist for code improvement
- `@devex-slack-expert` - Slack integration specialist for workflow automation
- `@devex-tooling-engineer` - Developer tooling engineer creating development tools

### Specialized Domains (12 agents)
- `@domain-api-documenter` - API documentation specialist for comprehensive API docs
- `@domain-blockchain-developer` - Blockchain developer specializing in Web3 and smart contracts
- `@domain-embedded-systems` - Embedded systems engineer for IoT and hardware programming
- `@domain-fintech-engineer` - FinTech specialist for financial systems and compliance
- `@domain-game-developer` - Game developer specializing in game engines and mechanics
- `@domain-iot-engineer` - IoT engineer for Internet of Things solutions
- `@domain-m365-admin` - Microsoft 365 administrator for enterprise M365 management
- `@domain-mobile-app-developer` - Mobile application developer for native mobile apps
- `@domain-payment-integration` - Payment integration specialist for payment gateways
- `@domain-quant-analyst` - Quantitative analyst for algorithmic trading and financial modeling
- `@domain-risk-manager` - Risk management specialist for enterprise risk assessment
- `@domain-seo-specialist` - SEO specialist for search engine optimization

### Business & Product (11 agents)
- `@biz-business-analyst` - Business analyst specializing in requirements and process improvement
- `@biz-content-marketer` - Content marketing specialist for technical content strategy
- `@biz-customer-success-manager` - Customer success manager for client relationships
- `@biz-legal-advisor` - Legal advisor for technology and compliance matters
- `@biz-product-manager` - Product manager specializing in product strategy and roadmaps
- `@biz-project-manager` - Project manager for technical project delivery
- `@biz-sales-engineer` - Sales engineer for technical sales support
- `@biz-scrum-master` - Scrum master for Agile team facilitation
- `@biz-technical-writer` - Technical writer for user documentation and guides
- `@biz-ux-researcher` - UX researcher specializing in user research and testing
- `@biz-wordpress-master` - WordPress specialist for WordPress development and management

### Meta & Orchestration (9 agents)
- `@meta-agent-organizer` - Expert agent organizer specializing in multi-agent orchestration
- `@meta-context-manager` - Expert context manager for information storage and retrieval
- `@meta-error-coordinator` - Expert error coordinator for distributed error handling
- `@meta-it-ops-orchestrator` - IT operations orchestrator for complex IT workflows
- `@meta-knowledge-synthesizer` - Expert knowledge synthesizer for extracting insights
- `@meta-multi-agent-coordinator` - Expert multi-agent coordinator for complex workflow orchestration
- `@meta-performance-monitor` - Expert performance monitor for system-wide metrics collection
- `@meta-task-distributor` - Expert task distributor for intelligent work allocation
- `@meta-workflow-orchestrator` - Expert workflow orchestrator for complex process design

### Research & Analysis (6 agents)
- `@research-competitive-analyst` - Expert competitive analyst for competitor intelligence
- `@research-data-researcher` - Expert data researcher for discovering and analyzing data sources
- `@research-market-researcher` - Expert market researcher for market analysis and insights
- `@research-research-analyst` - Expert research analyst for comprehensive information gathering
- `@research-search-specialist` - Expert search specialist for advanced information retrieval
- `@research-trend-analyst` - Expert trend analyst for identifying emerging patterns

## Usage in VSCode

1. Open GitHub Copilot Chat (`Ctrl+Alt+I` or `Cmd+Alt+I`)
2. Type `@` to see available agents
3. Select your agent or type `@agent-name your question`

### Example Usage

```
@core-api-designer help me design a REST API for user management
```

```
@lang-python-pro refactor this code to use async/await patterns
```

```
@quality-security-auditor review this authentication implementation
```

```
@devex-git-workflow-manager suggest a branching strategy for our team
```

## Syncing Agents

To update agents from this repo:
```bash
cd /path/to/coding-subagents
git pull
cp copilot-github-agents/*.agent.md ~/.copilot/agents/
```

On Windows:
```powershell
cd C:\path\to\coding-subagents
git pull
Copy-Item copilot-github-agents\*.agent.md $HOME\.copilot\agents\
```

## Notes

- **Total Agents**: 127 specialized agents covering all aspects of software development
- **Conversion**: Agents are converted from Claude format to GitHub Copilot format
- **Original Source**: Original Claude agents are preserved in the `categories/` folder
- **Naming Convention**: File naming uses category prefixes for organization in flat structure
- **Compatibility**: All agents use flat structure as required by VSCode
- **Format**: Uses `.agent.md` extension with YAML frontmatter as required by GitHub Copilot

## Agent Categories Summary

| Category | Count | Prefix | Description |
|----------|-------|--------|-------------|
| Core Development | 10 | `core-` | Fundamental development roles (API, backend, frontend, etc.) |
| Language Specialists | 26 | `lang-` | Language-specific experts (Python, TypeScript, Go, etc.) |
| Infrastructure | 14 | `infra-` | DevOps, cloud, and infrastructure specialists |
| Quality & Security | 14 | `quality-` | Testing, security, and code quality experts |
| Data & AI | 12 | `data-` | Data engineering, ML, and AI specialists |
| Developer Experience | 13 | `devex-` | Tools and workflows for developer productivity |
| Specialized Domains | 12 | `domain-` | Domain-specific experts (fintech, IoT, blockchain, etc.) |
| Business & Product | 11 | `biz-` | Business and product management roles |
| Meta & Orchestration | 9 | `meta-` | Multi-agent coordination and orchestration |
| Research & Analysis | 6 | `research-` | Research and analytical specialists |

## Contributing

To add new agents or modify existing ones:

1. Edit agents in the source `categories/` folder
2. Run the conversion script to regenerate `.agent.md` files
3. Test agents in VSCode with GitHub Copilot
4. Submit pull requests with clear descriptions

## License

See the main repository LICENSE file for licensing information.

## Support

For issues, questions, or contributions, please visit the main repository at `paddedzero/coding-subagents`.
