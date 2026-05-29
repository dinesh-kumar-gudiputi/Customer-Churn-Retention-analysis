-- ============================================
-- Customer Churn Analysis
-- ============================================

-- Overall Churn Rate

SELECT
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn;

-- ============================================

-- Churn by Contract Type

SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate
FROM customer_churn
GROUP BY Contract;

-- ============================================

-- Churn by Internet Service

SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customer_churn
GROUP BY InternetService;

-- ============================================

-- Churn by Payment Method

SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM customer_churn
GROUP BY PaymentMethod;

-- ============================================

-- Churn by Tenure Group

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS tenure_group,

    COUNT(*) AS customers,

    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
    AS churned_customers

FROM customer_churn

GROUP BY tenure_group;

-- ============================================

-- Customers with Highest Monthly Charges

SELECT
    customerID,
    MonthlyCharges,
    Churn
FROM customer_churn
ORDER BY MonthlyCharges DESC
LIMIT 20;