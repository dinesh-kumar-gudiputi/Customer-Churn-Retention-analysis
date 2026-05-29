-- ============================================
-- Customer Churn Data Cleaning
-- ============================================

SELECT *
FROM customer_churn;

-- ============================================
-- Check Total Records
-- ============================================

SELECT COUNT(*) AS total_records
FROM customer_churn;

-- ============================================
-- Check Missing Values
-- ============================================

SELECT *
FROM customer_churn
WHERE TotalCharges IS NULL
   OR TotalCharges = '';

-- ============================================
-- Remove Blank Spaces
-- ============================================

UPDATE customer_churn
SET TotalCharges = NULL
WHERE TotalCharges = '';

-- ============================================
-- Check Duplicate Customer IDs
-- ============================================

SELECT customerID, COUNT(*)
FROM customer_churn
GROUP BY customerID
HAVING COUNT(*) > 1;

-- ============================================
-- Verify Data Types
-- ============================================

SELECT *
FROM customer_churn
LIMIT 10;

-- ============================================
-- Churn Distribution
-- ============================================

SELECT
    Churn,
    COUNT(*) AS customer_count
FROM customer_churn
GROUP BY Churn;

-- ============================================
-- Contract Distribution
-- ============================================

SELECT
    Contract,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY Contract;

-- ============================================
-- Internet Service Distribution
-- ============================================

SELECT
    InternetService,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY InternetService;