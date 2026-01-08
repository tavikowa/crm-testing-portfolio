# 🐛 BUG-001: Missing validation in "Office Phone" field accepts non-numeric characters

| Attribute | Details |
| :--- | :--- |
| **ID** | BUG-001 |
| **Severity** | 🟡 Medium (Functional / Data Integrity) |
| **Module** | Sales / Leads |
| **Environment** | Chrome 143.0.7499.170, Windows 11, SuiteCRM Demo v. 7.x |
| **Reporter** | [Oktawia] |

---

### 📝 Description
The "Office Phone" field in the Lead creation form does not validate input data. It accepts alphabetic characters and special symbols (e.g., "Abc!@#") instead of only numbers and allowed symbols like "-", "+" or space.
Allowing non-numeric data in phone fields may cause integration failures with VOIP systems or external dialers used by the Sales team.

### 👣 Steps to Reproduce
1. Navigate to **Sales** -> **Leads**.
2. Click **Create Lead**.
3. Fill in mandatory fields (Last Name).
4. In the **Office Phone** field, enter the string: `test!@#$%^&*()`.
5. Click **Save**.

### 📉 Expected Result
The system should display a validation error: "Invalid phone number format" OR restrict input to numeric characters/standard phone symbols (+, -, space).

### 📈 Actual Result
The system saves the Lead successfully. The "Office Phone" field displays `test!@#$%^&*()` on the detail view.

### 📸 Evidence
![Screenshot of invalid phone data](./assets/Bug_001_Lead_Phone_Val.png)

---

### 💡 Tester's Analysis
While this does not crash the UI, it pollutes the database with invalid contact data, which decreases the quality of the CRM records (Data Integrity issue).