# Axiom | AI Program Orchestration Platform

## Overview
Axiom is a sovereign, open-source stack designed for AI Program Managers with a Technical Lead background. It prioritizes automation, SQL-driven insights, and versioned infrastructure.

## Component Map
- **Sketch (Excalidraw):** Virtual whiteboard for system architecture and data flow diagrams.
- **Governance (Baserow):** Relational database for strategic roadmap and asset tracking.
- **Analytics (Metabase):** Business Intelligence powered by raw SQL queries.
- **Bridge (n8n):** Orchestration engine connecting technical events (Git) to business KPIs.
- **Vault (Gitea):** Self-hosted Git for versioning SQL scripts, workflows, and IaC.

## Setup
1. Run the stack: `docker-compose up -d`
2. Access services:
   - Sketch: http://localhost:9001
   - Governance: http://localhost:8080
   - Analytics: http://localhost:3000
   - Orchestration: http://localhost:5678
   - Git Vault: http://localhost:3001