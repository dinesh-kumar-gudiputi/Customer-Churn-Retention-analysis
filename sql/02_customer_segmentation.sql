-- ============================================
-- Customer Segmentation Analysis
-- ============================================

-- Customers by Gender

SELECT
    gender,
    COUNT(*) AS total_customers
FROM customer_churn
GROUP BY gender;

-- ============================================

-- Customers by Senior Citizen Status

SELECT
    SeniorCitizen,
    COUNT(*) AS total_customers
FROM customer_churn
GROUP BY SeniorCitizen;

-- ============================================

-- Customers by Contract Type

SELECT
    Contract,
    COUNT(*) AS total_customers
FROM customer_churn
GROUP BY Contract;

-- ============================================

-- Customers by Payment Method

SELECT
    PaymentMethod,
    COUNT(*) AS total_customers
FROM customer_churn
GROUP BY PaymentMethod;

-- ============================================

-- Average Monthly Charges by Contract Type

SELECT
    Contract,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge
FROM customer_churn
GROUP BY Contract;

-- ============================================

-- Average Tenure by Customer Segment

SELECT
    Contract,
    ROUND(AVG(tenure), 2) AS avg_tenure
FROM customer_churn
GROUP BY Contract;

-- ============================================

-- High Value Customers

SELECT *
FROM customer_churn
WHERE MonthlyCharges > 80
  AND tenure > 24;

-- ============================================

-- Customer Segmentation by Monthly Charges

SELECT
    CASE
        WHEN MonthlyCharges < 35 THEN 'Low'
        WHEN MonthlyCharges < 70 THEN 'Medium'
        ELSE 'High'
    END AS charge_segment,
    COUNT(*) AS customers
FROM customer_churn
GROUP BY charge_segment;