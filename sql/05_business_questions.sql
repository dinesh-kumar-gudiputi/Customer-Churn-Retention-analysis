-- ============================================
-- Advanced Business Questions
-- ============================================

-- Which contract type has the highest churn rate?

SELECT
    Contract,

    ROUND(
        SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        * 100.0 / COUNT(*),
        2
    ) AS churn_rate

FROM customer_churn

GROUP BY Contract

ORDER BY churn_rate DESC;

-- ============================================

-- Which payment method has the most churned customers?

SELECT
    PaymentMethod,
    COUNT(*) AS churned_customers

FROM customer_churn

WHERE Churn = 'Yes'

GROUP BY PaymentMethod

ORDER BY churned_customers DESC;

-- ============================================

-- Which tenure group has highest retention?

SELECT
    CASE
        WHEN tenure <= 12 THEN '0-1 Year'
        WHEN tenure <= 24 THEN '1-2 Years'
        WHEN tenure <= 48 THEN '2-4 Years'
        ELSE '4+ Years'
    END AS tenure_group,

    COUNT(*) AS retained_customers

FROM customer_churn

WHERE Churn = 'No'

GROUP BY tenure_group

ORDER BY retained_customers DESC;

-- ============================================

-- Which customers generate highest monthly revenue?

SELECT
    customerID,
    MonthlyCharges,
    Contract,
    tenure

FROM customer_churn

ORDER BY MonthlyCharges DESC

LIMIT 20;

-- ============================================

-- Which customer segments are high risk?

SELECT *
FROM customer_churn

WHERE Contract = 'Month-to-month'
  AND MonthlyCharges > 70
  AND tenure < 12
  AND Churn = 'Yes';

-- ============================================

-- Average Monthly Charges by Churn Status

SELECT
    Churn,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charge

FROM customer_churn

GROUP BY Churn;