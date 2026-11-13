<h1 align="center">Customer Churn &amp; Retention Analysis</h1>

<p align="center"><b>Which customers leave, and where should retention effort go?</b></p>

<p align="center">
  <img src="https://img.shields.io/badge/SQL-4479A1?logo=mysql&logoColor=white" alt="SQL">
  <img src="https://img.shields.io/badge/Python-3776AB?logo=python&logoColor=white" alt="Python">
  <img src="https://img.shields.io/badge/pandas-150458?logo=pandas&logoColor=white" alt="pandas">
  <img src="https://img.shields.io/badge/Matplotlib-11557C" alt="Matplotlib">
  <img src="https://img.shields.io/badge/Jupyter-F37626?logo=jupyter&logoColor=white" alt="Jupyter">
</p>

Churn analysis on the Telco Customer Churn dataset. SQL scripts and Python show which customers leave and what they have in common, and a 3-page dashboard drawn in Python (matplotlib) summarises the results.

## Key findings

Computed from `datasets/cleaned/churn_summary.csv`: 7,032 customers, 1,869 churned (26.6%), 73.4% retained.

| Driver | Finding |
| --- | --- |
| Contract | Month-to-month customers churn at 42.7%, one-year at 11.3%, two-year at 2.8% |
| Tenure | Customers in their first year churn at 47.7%, customers with 4+ years at 9.5% |
| Monthly charges | High (70 and above) 35.5%, medium 23.7%, low (under 35) 10.9% |
| Payment method | Electronic check 45.3%, other methods 15 to 19% |
| Revenue | Churned customers pay $74.4 a month on average against $61.3 for retained ones, and make up 30.5% of monthly revenue |
| Highest risk | 814 customers with risk score 5 (month-to-month, charges above 70, tenure under 12 months) churn at 69.5% |

Recommendations are in [`docs/business_insights.md`](docs/business_insights.md): move month-to-month customers to longer contracts, improve onboarding in year one, and target customers with a high risk score.

## Dashboard

Three pages drawn in Python (matplotlib):

| Executive overview | Churn analysis | Retention insights |
| --- | --- | --- |
| ![Executive overview](dashboard/executive_overview.png) | ![Churn analysis](dashboard/churn_analysis.png) | ![Retention insights](dashboard/retention_insights.png) |

## What is in the repo

```text
.
├── datasets/
│   ├── raw/customer_churn.csv              7,043 customers, 21 columns
│   └── cleaned/                            cleaned data, churn summary with risk score, retention metrics
├── sql/                                    5 scripts, from cleaning to business questions
├── notebooks/01_churn_data_cleaning.ipynb  cleaning and churn encoding
├── dashboard/                              the 3 dashboard images
├── docs/                                   data dictionary, business insights, DAX measures
└── requirements.txt
```

## SQL scripts

| Script | Purpose |
| --- | --- |
| `01_data_cleaning.sql` | Row counts, blank `TotalCharges`, duplicate customer IDs, churn, contract and internet service distribution |
| `02_customer_segmentation.sql` | Customers by gender, senior status, contract and payment method, average charges and tenure, high-value customers |
| `03_churn_analysis.sql` | Overall churn rate, churn by contract, internet service, payment method and tenure group, highest-charge customers |
| `04_retention_metrics.sql` | Retention rate, retained and churned revenue, average lifetime, long-term customers |
| `05_business_questions.sql` | Highest-churn contract, payment method with most churners, best-retaining tenure group, high-risk segments, charges by churn status |

The scripts expect a table called `customer_churn` loaded from the raw CSV and use MySQL syntax.

## Data cleaning

- 11 of the 7,043 raw rows have a blank `TotalCharges` and are dropped, which leaves 7,032 customers.
- Added `tenure_group`, `monthly_charge_group` and `Churn_Encoded`. Every column is described in [`docs/data_dictionary.md`](docs/data_dictionary.md).

## DAX measures

[`docs/dax_measures.md`](docs/dax_measures.md) lists 11 DAX measures for a Power BI model: churn and retention rate, churned and retained revenue, high-risk customers. There is no Power BI file in this repo.

## Run the notebook

```sh
pip install -r requirements.txt
jupyter notebook notebooks/01_churn_data_cleaning.ipynb
```

## Author

Dinesh Kumar Gudiputi, [LinkedIn](https://www.linkedin.com/in/dineshkumargudiputi/), [GitHub](https://github.com/dinesh-kumar-gudiputi)
