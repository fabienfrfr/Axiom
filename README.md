# Axiom | AI Program Orchestration Platform

## Strategy
- **Sovereign**: 100% self-hosted & Open Source.
- **As-Code**: Orchestration (YAML/Kestra) & Reporting (SQL/Evidence).
- **Optimized**: High-performance stack for local hardware.

## Stack
| Component | Technology | Role |
| :--- | :--- | :--- |
| **Orchestration** | Windmill | Workflow-as-Code (YAML) |
| **Governance** | NocoDB | Smart Asset Tracking |
| **Analytics** | Evidence.dev | SQL-based Static BI |
| **Intelligence** | LocalAI | Private LLM API |
| **Versioning** | Gitea | Git-based SSOT |
| **Visuals** | Excalidraw | Infinite Canvas |
| **Storage** | FileBrowser | Minimalist DMS |


## Quick Start
```bash
make up             # Deploy services
make report-build   # Refresh Evidence dashboards
make sync           # Update project structure
```

## Service Access
   - **Orchestration (Windmill)**: http://localhost:8080
   - **Governance (NocoDB)**: http://localhost:8083
   - **Analytics (Evidence)**: http://localhost:3000
   - **Visual Sketch**: http://localhost:9002
   - **Files Management**: http://localhost:8081
   - **Git Vault**: http://localhost:3001
   - **AI API**: http://localhost:8082

## Automation Flow
Workflows are defined as Python or Rust scripts within **Windmill** and versioned in **Gitea**. 
1. **Trigger**: Windmill monitors folders or receives webhooks.
2. **Processing**: Scripts call **LocalAI** for document extraction or summarization.
3. **Governance**: Data is structured and injected into **NocoDB**.
4. **Reporting**: `make report-build` triggers **Evidence.dev** to compile SQL data into static dashboards.

## Maintenance
- **Update Logic**: `make sync` to export the latest project structure to JSON.
- **Build Reports**: `make report-build` to refresh the analytics site.
- **Clean System**: `make clean` to wipe caches and temporary containers.