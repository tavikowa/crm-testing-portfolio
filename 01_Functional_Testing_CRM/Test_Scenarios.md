# 🧪 Functional Test Scenarios - SuiteCRM

**Module:** Sales / Leads
**Tested Version:** SuiteCRM Demo 7.x
**Author:** [Oktawia]

---

### 📋 Test Scope: Lead Management & Workflow

| ID | Title | Pre-conditions | Test Steps | Expected Results | Status |
| :--- | :--- | :--- | :--- | :--- | :--- |
| **TC_001** | **Creating a new Lead** | 1. User is logged in.<br>2. Dashboard is displayed. | 1. Maps to "Sales" -> "Leads".<br>2. Click "Create Lead" button.<br>3. Enter "Smith" in the "Last Name" field.<br>4. Click "Save" button. | System saves the Lead. User is redirected to the newly created Lead overview page. "Smith" is visible in the Leads list. | ✅ PASS |
| **TC_002** | **Missing field in creating a new Lead** | 1. User is logged in.<br>2. User is on the "Create Lead" page. | 1. Leave "Last Name" field empty.<br>2. Click "Save" button. | System does not save the Lead due to missing required field. Suitable error message is displayed. | ✅ PASS |
| **TC_003** | **Lead conversion to Contact & Account workflow** | 1. User is logged in.<br>2. Dashboard is displayed.<br>3. Existing Lead "Smith" with status "New" is available. | 1. Open Lead "Smith" details.<br>2. Click "Actions" dropdown menu.<br>3. Select "Convert Lead".<br>4. On the conversion screen, ensure "Create Contact" & "Create Account" checkboxes are selected.<br>5. In "Create Account" enter "Tech-Corp" in the Name field.<br>6. Click "Save". | Lead "Smith" status changes to "Converted". A new record in "Contacts" module is created with the same data. User is redirected to a page informing that new Contact and Account have been created. | ✅ PASS |
| **TC_004** | **Editing existing Lead** | 1. User is logged in.<br>2. Dashboard is displayed.<br>3. Existing Lead "Smith" is available. | 1. Open Lead "Smith" details.<br>2. Click "Actions" dropdown menu.<br>3. Select "Edit".<br>4. Add "111222333" in the "Mobile" field.<br>5. Click "Save". | User is redirected to the "Smith" Lead page, added phone number is visible. | ✅ PASS |

---

### 💡 Note on Data
*Test data used for verification (e.g., specific fake names or IDs) helps in reproducing bugs precisely.*