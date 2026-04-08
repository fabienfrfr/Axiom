# Axiom | AI Program Orchestration Platform

## Overview
Axiom is a sovereign, open-source stack designed to manage complex AI programs. It integrates design, governance, automation, and analytics into a single "as-code" ecosystem.

## Component Map
- **Design (Penpot):** System architecture sketching and UI/UX prototyping for dashboards.
- **Governance (Baserow):** Relational database for roadmap tracking and asset management.
- **Analytics (Metabase):** Business Intelligence powered by SQL queries.
- **Bridge (n8n):** Workflow engine to automate data flow between Git and Governance.
- **Vault (Gitea):** Git-based repository for IaC, SQL scripts, and n8n workflows.

## Setup
1. Run the stack: `docker-compose up -d`
2. Access endpoints:
   - Design: http://localhost:9001
   - Governance: http://localhost:8080
   - Analytics: http://localhost:3000
   - Orchestration: http://localhost:5678
   - Git Vault: http://localhost:3001
