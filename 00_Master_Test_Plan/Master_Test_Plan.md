# 📋 Master Test Plan - SuiteCRM Verification Project

| Document Info | Details |
| :--- | :--- |
| **Project Name** | SuiteCRM Workflow Validation |
| **Version** | 1.0 |
| **Author** | [Oktawia Kowalewska] |
| **Date** | 08-01-2026 |
| **Status** | Active |

---

## 1. 🎯 Introduction
The objective of this Test Plan is to define the strategy, scope, and resources required for verifying the core functionalities of the **SuiteCRM** system (Sales Module).
The focus is on validating business workflows (Lead to Opportunity), data integrity via SQL, and API endpoint responsiveness.

## 2. 🔍 Scope of Testing

### 2.1 In-Scope (Co testujemy)
* **Functional Testing:**
    * **Module Leads:** Creation, Edit, Delete, Convert to Account/Contact.
    * **Module Opportunities:** Sales stage workflow, probability logic.
    * **Data Validation:** Negative testing for input fields (forms).
* **Backend Verification:** SQL queries to verify data persistence in the database.
* **API Testing:** CRUD operations validation using Postman (Simulated Env).
* **Browsers:** Google Chrome (Latest Version).

### 2.2 Out-of-Scope (Czego NIE testujemy)
* Performance / Load Testing (Stress tests).
* Mobile Application native testing.
* Payment Gateway integrations.
* System Installation & Configuration (using hosted Demo environment).

---

## 3. 🛠️ Test Strategy

### 3.1 Test Levels
1.  **Smoke Testing:** Basic check if the Demo environment is accessible and Login works.
2.  **Functional Testing:** Manual execution of Test Cases (Happy Path & Negative).
3.  **Regression Testing:** Re-running core scenarios after mock updates.

### 3.2 Tools & Environment
| Tool | Purpose |
| :--- | :--- |
| **SuiteCRM Demo** | System Under Test (SUT) |
| **Jira / GitHub Issues** | Bug Tracking & Reporting |
| **Postman** | API Testing & Automation Scripts |
| **Visual Studio Code** | SQL & Markdown Editing |
| **Git & GitHub** | Version Control & Portfolio Hosting |

---

## 4. 🛑 Entry & Exit Criteria

### Entry Criteria
* Access to SuiteCRM Demo environment is confirmed.
* Test Plan is approved.
* Test Data (e.g., sample user accounts) is prepared.

### Exit Criteria
* 100% of "Critical" and "High" priority test cases are executed.
* Pass rate is above 90%.
* All Critical bugs are reported and documented.

---

## 5. ⚠️ Risks & Mitigation
| Risk | Impact | Mitigation Strategy |
| :--- | :--- | :--- |
| **Environment Reset** | High | The public Demo resets data every hour. **Strategy:** Automate API tests; Keep manual test scenarios short and focused. |
| **API Restrictions** | Medium | Demo API authentication is blocked. **Strategy:** Use Mock Servers and public API (JSONPlaceholder) to demonstrate skills. |

---

## 6. 📅 Deliverables
1.  **Test Plan** (This document).
2.  **Test Scenarios** (Excel & Markdown).
3.  **Bug Reports** (Standardized format).
4.  **SQL Scripts** (Data verification).
5.  **Postman Collection** (JSON export with scripts).