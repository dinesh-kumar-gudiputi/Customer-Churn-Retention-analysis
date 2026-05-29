-- ============================================
-- Customer Retention Metrics
-- ============================================

-- Retention Rate

SELECT
    ROUND(
        SUM(CASE WHEN Churn = 'No' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS retention_rate
FROM customer_churn;

-- ============================================

-- Revenue from Retained Customers

SELECT
    ROUND(SUM(MonthlyCharges), 2) AS retained_revenue
FROM customer_churn
WHERE Churn = 'No';

-- ============================================

-- Revenue from Churned Customers

SELECT
    ROUND(SUM(MonthlyCharges), 2) AS churned_revenue
FROM customer_churn
WHERE Churn = 'Yes';

-- ============================================

-- Average Customer Lifetime

SELECT
    ROUND(AVG(tenure), 2) AS average_customer_lifetime
FROM customer_churn;

-- ============================================

-- Retention by Contract Type

SELECT
    Contract,
    COUNT(*) AS retained_customers
FROM customer_churn
WHERE Churn = 'No'
GROUP BY Contract;

-- ============================================

-- Long-Term Customers

SELECT *
FROM customer_churn
WHERE tenure > 48
  AND Churn = 'No';

-- ============================================

-- High Risk Customers

SELECT *
FROM customer_churn
WHERE Contract = 'Month-to-month'
  AND MonthlyCharges > 70
  AND tenure < 12;