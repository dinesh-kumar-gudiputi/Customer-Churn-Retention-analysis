# Customer Churn & Retention Analysis

End-to-end customer analytics and business intelligence project focused on analyzing customer churn behavior, retention trends, customer segmentation, and business risk indicators using SQL, Python, and Power BI-style dashboard reporting.

---

# Project Overview

This project simulates a real-world telecom customer analytics workflow followed by data analysts and business intelligence teams to identify:

- customer churn drivers
- retention opportunities
- high-risk customer segments
- revenue retention insights
- contract performance
- customer lifetime behavior

The project combines:
- SQL analytics
- Python data analysis
- KPI reporting
- dashboard visualization
- business storytelling
- strategic recommendations

---

# Business Problem

Customer churn directly impacts business revenue, customer lifetime value, and operational growth.

This project helps answer critical business questions such as:

- Which customers are most likely to churn?
- Which contract types have the highest churn rates?
- How do monthly charges affect retention?
- Which payment methods correlate with churn?
- Which customer segments are high-risk?
- How can businesses improve customer retention?

---

# Tech Stack

| Category | Tools & Technologies |
|----------|----------------------|
| Programming | Python |
| Data Analysis | Pandas, NumPy |
| Visualization | Matplotlib, Seaborn |
| Querying | SQL |
| Business Intelligence | Power BI-style Dashboard Reporting |
| BI Modeling | DAX Measures |
| Development Environment | VS Code, Jupyter Notebook |
| Version Control | Git & GitHub |

---

# Project Architecture

```bash
customer-churn-retention-analysis/
│
├── README.md
├── requirements.txt
├── .gitignore
│
├── datasets/
│   ├── raw/
│   │   └── customer_churn.csv
│   │
│   └── cleaned/
│       ├── cleaned_churn_data.csv
│       ├── churn_summary.csv
│       └── retention_metrics.csv
│
├── sql/
│   ├── 01_data_cleaning.sql
│   ├── 02_customer_segmentation.sql
│   ├── 03_churn_analysis.sql
│   ├── 04_retention_metrics.sql
│   └── 05_business_questions.sql
│
├── python/
│   ├── churn_data_cleaning.ipynb
│   ├── exploratory_churn_analysis.ipynb
│   ├── retention_analysis.ipynb
│   └── dashboard_visuals.ipynb
│
├── powerbi/
│   ├── churn_dashboard.pbix
│   ├── dax_measures.md
│   ├── README.md
│   ├── business_insights.md
│   │
│   └── dashboard_screenshots/
│       ├── executive_overview.png
│       ├── churn_analysis.png
│       └── retention_insights.png
│
├── presentation/
│   └── customer_retention_insights.pdf
│
└── docs/
    ├── data_dictionary.md
    └── project_workflow.md
```

---

# Dataset Information

Dataset Used:
- Telco Customer Churn Dataset

Dataset includes:
- customer demographics
- subscription details
- internet services
- billing information
- payment methods
- contract types
- churn indicators
- customer tenure metrics

---

# Project Workflow

## 1. Data Collection
Imported telecom customer churn dataset for business analytics and retention analysis.

## 2. Data Cleaning
Performed:
- missing value handling
- duplicate removal
- datatype conversion
- feature engineering
- churn encoding

## 3. Exploratory Data Analysis
Analyzed:
- churn distribution
- customer demographics
- contract performance
- payment behavior
- tenure analysis
- customer segmentation

## 4. Retention Analysis
Investigated:
- retention KPIs
- customer lifetime metrics
- churn risk scoring
- revenue retention analysis
- high-risk customer groups

## 5. SQL Analytics
Developed:
- churn KPI queries
- retention metrics
- customer segmentation analysis
- business problem-solving queries
- advanced customer analytics

## 6. Dashboard Reporting
Created executive-style dashboard visuals for:
- KPI monitoring
- churn analysis
- retention insights
- customer segmentation
- business intelligence reporting

## 7. Business Recommendations
Generated strategic recommendations to improve:
- customer retention
- pricing strategies
- customer engagement
- churn reduction
- operational efficiency

---

# SQL Analysis

The SQL section includes:

- data cleaning workflows
- customer segmentation analysis
- churn KPI reporting
- retention metrics
- advanced business problem-solving

Key SQL concepts used:
- aggregations
- CASE statements
- filtering
- grouping
- KPI calculations
- customer segmentation logic

---

# Python Analysis

Python notebooks include:

## churn_data_cleaning.ipynb
- data preprocessing
- datatype fixing
- feature engineering
- churn encoding

## exploratory_churn_analysis.ipynb
- churn distribution analysis
- demographic analysis
- contract analysis
- payment method analysis
- customer segmentation

## retention_analysis.ipynb
- retention KPIs
- customer lifetime analysis
- churn risk scoring
- retention opportunity analysis

## dashboard_visuals.ipynb
- executive dashboard generation
- churn dashboard visuals
- retention dashboard visuals
- KPI visualization

---

# Power BI & Dashboard Reporting

The project includes Power BI-style dashboard reporting workflows and KPI modeling.

Dashboard sections include:

## Executive Overview
High-level customer churn KPIs and retention metrics.

## Churn Analysis
Analysis of churn behavior across contracts, payment methods, tenure groups, and customer segments.

## Retention Insights
Customer retention analysis, churn risk scoring, and business opportunity analysis.

---

# Power BI DAX Measures

The project also includes:
- churn KPIs
- retention KPIs
- revenue calculations
- customer risk metrics
- DAX business measures

Located in:

```bash
powerbi/dax_measures.md
```

---

# Dashboard Screenshots

## Executive Overview

![Executive Overview](powerbi/dashboard_screenshots/executive_overview.png)

---

## Churn Analysis

![Churn Analysis](powerbi/dashboard_screenshots/churn_analysis.png)

---

## Retention Insights

![Retention Insights](powerbi/dashboard_screenshots/retention_insights.png)

---

# Key Business Insights

## Contract Impact
Month-to-month customers demonstrated significantly higher churn rates compared to long-term contract customers.

## Customer Tenure
Customers with shorter tenure showed elevated churn behavior and lower retention rates.

## Pricing Impact
Higher monthly charges increased churn probability.

## Payment Method Behavior
Electronic check users demonstrated higher churn risk.

## Customer Retention
Long-term contracts improved customer retention significantly.

---

# Strategic Recommendations

## Encourage Long-Term Contracts
Offer incentives and discounts for annual or multi-year subscriptions.

## Improve Early Customer Engagement
Develop onboarding and loyalty programs for new customers.

## Retention Campaigns
Target high-risk customer groups with proactive retention strategies.

## Pricing Optimization
Review pricing structures for high monthly charge customers.

## Continuous KPI Monitoring
Implement dashboard-based KPI tracking for churn monitoring and retention analytics.

---

# Skills Demonstrated

- SQL Analytics
- Python Data Analysis
- Exploratory Data Analysis (EDA)
- Customer Segmentation
- Retention Analytics
- Churn Analysis
- KPI Reporting
- Dashboard Design
- Business Intelligence Reporting
- DAX Measures
- Business Storytelling
- Strategic Analytics

---

# Future Improvements

Potential future enhancements:

- Machine Learning churn prediction
- Customer lifetime value forecasting
- Automated ETL pipelines
- Interactive dashboards
- Predictive retention modeling
- Advanced customer analytics

---

# Author

## Dinesh Kumar Gudiputi

- LinkedIn: https://linkedin.com/in/dineshkumargudiputi
- GitHub: https://github.com/dinesh-kumar-gudiputi

---

# Portfolio Project

This project was developed as part of a professional data analytics portfolio focused on:
- customer analytics
- business intelligence
- retention analysis
- churn analytics
- dashboard reporting
- end-to-end analytics workflows
