# Data Dictionary

## Dataset Overview

The dataset contains customer information used for churn analysis and retention analytics.

---

# Column Definitions

| Column Name | Description |
|-------------|-------------|
| customerID | Unique customer identifier |
| gender | Customer gender |
| SeniorCitizen | Indicates whether customer is a senior citizen |
| Partner | Whether customer has a partner |
| Dependents | Whether customer has dependents |
| tenure | Number of months customer stayed with the company |
| PhoneService | Whether customer has phone service |
| MultipleLines | Whether customer has multiple phone lines |
| InternetService | Type of internet service |
| OnlineSecurity | Whether customer has online security service |
| OnlineBackup | Whether customer has online backup service |
| DeviceProtection | Whether customer has device protection |
| TechSupport | Whether customer has technical support |
| StreamingTV | Whether customer uses streaming TV |
| StreamingMovies | Whether customer uses streaming movies |
| Contract | Customer contract type |
| PaperlessBilling | Whether customer uses paperless billing |
| PaymentMethod | Customer payment method |
| MonthlyCharges | Monthly subscription charges |
| TotalCharges | Total amount charged to customer |
| Churn | Whether customer churned |
| tenure_group | Engineered customer tenure segment |
| monthly_charge_group | Engineered monthly charge segment |
| Churn_Encoded | Numerical encoding for churn analysis |

---

# Engineered Features

## tenure_group

Customer segmentation based on tenure duration:

- 0-1 Year
- 1-2 Years
- 2-4 Years
- 4+ Years

---

## monthly_charge_group

Customer segmentation based on monthly charges:

- Low
- Medium
- High

---

## Churn_Encoded

Binary churn encoding used for correlation analysis:

- 1 = Churned
- 0 = Retained