# Axiom | AI Program Orchestration Platform

## Overview
Axiom is a sovereign, lightweight stack built for Program Managers with a Tech Lead mindset. 
It prioritizes **Apache 2.0** and **MIT** licensed tools, automation-as-code (YAML), and SQL-driven governance.

## Component Map
- **Slides (tldraw)**: Visual whiteboarding and presentation using the "Frames" system. (Apache 2.0)
- **Docs (FileBrowser + OnlyOffice)**: Native DOCX/PDF management and editing. (MIT/Apache 2.0)
- **Intelligence (LocalAI)**: Local LLM server for automated document analysis and mail sorting. (MIT)
- **Governance (Baserow)**: Single source of truth for roadmaps and strategic assets. (MIT)
- **Analytics (Metabase)**: SQL-powered Business Intelligence dashboards. (Apache 2.0)
- **Orchestration (Kestra)**: Event-driven orchestration and data pipelines defined as YAML-code. (Apache 2.0)
- **Vault (Gitea)**: Self-hosted Git for versioning YAML flows, scripts, and reports. (MIT)

## Setup
1. Deploy the stack: `docker compose up -d`
2. Service Access:
   - **Visual Slides**: http://localhost:9002
   - **Docs & DOCX**: http://localhost:8081
   - **Orchestration (Kestra)**: http://localhost:8080 (UI)
   - **Governance (Baserow)**: http://localhost:8083
   - **Analytics**: http://localhost:3000
   - **Git Vault**: http://localhost:3001
   - **AI API**: http://localhost:8082

## Automation Flow
Workflows are defined in YAML and versioned in Gitea. 
Kestra monitors the `shared_docs` volume to trigger document processing (e.g., summary generation via LocalAI or PDF conversion) whenever a file is uploaded via FileBrowser.