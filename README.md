# Axiom | AI Program Orchestration

## Strategy
- **Sovereign**: 100% self-hosted & Open Source.
- **As-Code**: Orchestration (Windmill) & BI/Slides (Visivo).
- **High-Performance**: Cœur Rust/Go pour une empreinte RAM minimale.

## Stack
| Component | Tech | Role |
| :--- | :--- | :--- |
| **Orchestration** | Windmill | Workflow-as-Code (Python/Rust) |
| **Analytics/Slides**| Visivo | Dashboards & Decks (YAML/SQL) |
| **Governance** | NocoDB | Smart Asset Tracking |
| **Intelligence** | LocalAI | Private LLM API |
| **Versioning** | Gitea | Git-based SSOT |
| **Visuals** | Excalidraw | Infinite Canvas |
| **Storage** | FileBrowser | Minimalist DMS |

## Quick Start
```bash
make up
make sync
````

## Service Access
   - **Orchestration (Windmill)**: http://localhost:8080
   - **Governance (NocoDB)**: http://localhost:8083
   - **Analytics (Visivo)**: http://localhost:3000
   - **Visual Sketch**: http://localhost:9002
   - **Files Management**: http://localhost:8081
   - **Git Vault**: http://localhost:3001
   - **AI API**: http://localhost:8082
   

## Automation Flow
Workflows are defined as Python or Rust scripts within **Windmill** and versioned in **Gitea**. 
1. **Trigger**: Windmill monitors folders or receives webhooks.
2. **Processing**: Scripts call **LocalAI** for document extraction or summarization.
3. **Governance**: Data is structured and injected into **NocoDB**.
4. **Reporting**: **Visivo** compile SQL data into static dashboards.
