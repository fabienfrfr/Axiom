# Project Axiom | Program Management Template

## 1. Governance Structure (Baserow)
*Main tracking tables to be initialized:*

| Table | Purpose | Key Fields |
| :--- | :--- | :--- |
| **Initiatives** | Project Tracking | Name, Status, ROI, Technical Lead |
| **Assets** | Fleet/Fleet Units | Vessel ID, IoT Status, Data Connection |
| **Milestones** | Roadmap | Phase (MVP/Scale), Deadline, Git Tag |
| **Risks** | Mitigation | Impact, Probability, Owner |

---

## 2. Infrastructure Setup (Docker)
*Deployment command:*
```bash
docker compose up -d
```
* **Access:** Governance (:8080), Analytics (:3000), Bridge (:5678), Vault (:3001), Sketch (:9001).

---

## 3. Workflow Automation (n8n)
*Logic for "As-Code" synchronization:*
1.  **Trigger:** Webhook from Gitea (on `Tag Push`).
2.  **Function:** Extract version and project ID via JavaScript.
3.  **Action:** Update `Milestone Status` in Baserow via REST API.

---

## 4. Reporting (SQL - Metabase)
*Standard ROI Query:*
```sql
SELECT 
    project_name, 
    actual_savings - budget_cost AS net_roi 
FROM initiatives 
WHERE status = 'Production';
```

---

## 5. Repository Layout (Gitea)
```text
/axiom-program
├── /infra        # Docker & Env files
├── /workflows    # n8n JSON exports
├── /sql          # Analytics queries
├── /docs         # Excalidraw schemas
└── README.md     # System documentation
```