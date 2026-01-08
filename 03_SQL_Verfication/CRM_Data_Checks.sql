/*
   PROJECT: SuiteCRM Data Verification
   AUTHOR: [Oktawia]
   DESCRIPTION: SQL queries designed to verify data integrity after manual tests.
*/

-- =============================================
-- 1. VERIFY LEAD CREATION (Check for TC_001)
-- Description: Confirm that the lead "Smith" was inserted into the database.
-- =============================================
SELECT 
    id, 
    first_name, 
    last_name, 
    status, 
    date_entered, 
    assigned_user_id
FROM leads
WHERE last_name = 'Smith' 
AND deleted = 0; -- Ensure the record is not soft-deleted

-- =============================================
-- 2. VERIFY LEAD CONVERSION (Check for TC_003)
-- Description: Check if the Lead status changed to 'Converted' 
-- and verify the link between the new Contact and Account.
-- =============================================

-- Step A: Check Lead Status
SELECT status FROM leads WHERE last_name = 'Smith';

-- Step B: Verify Contact and Account relationship (JOIN)
-- We expect to see 'Smith' working at 'Tech-Corp'.
SELECT 
    c.first_name AS Contact_Name,
    c.last_name AS Contact_Surname,
    a.name AS Account_Name,
    a.billing_address_city AS City
FROM contacts c
JOIN accounts_contacts ac ON c.id = ac.contact_id  -- Linking table
JOIN accounts a ON ac.account_id = a.id
WHERE c.last_name = 'Smith';

-- =============================================
-- 3. DATA INTEGRITY CHECK (Negative Test Validation)
-- Description: Ensure no leads exist with missing mandatory fields (Clean-up check)
-- =============================================
SELECT count(*) as Invalid_Leads_Count
FROM leads
WHERE last_name IS NULL OR last_name = '';