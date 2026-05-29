# Power BI DAX Measures

## Total Customers

```DAX
Total Customers = COUNT(customer_churn[customerID])
```

---

## Churned Customers

```DAX
Churned Customers =
CALCULATE(
    COUNT(customer_churn[customerID]),
    customer_churn[Churn] = "Yes"
)
```

---

## Retained Customers

```DAX
Retained Customers =
CALCULATE(
    COUNT(customer_churn[customerID]),
    customer_churn[Churn] = "No"
)
```

---

## Churn Rate

```DAX
Churn Rate =
DIVIDE(
    [Churned Customers],
    [Total Customers],
    0
) * 100
```

---

## Retention Rate

```DAX
Retention Rate =
DIVIDE(
    [Retained Customers],
    [Total Customers],
    0
) * 100
```

---

## Average Monthly Charges

```DAX
Average Monthly Charges =
AVERAGE(customer_churn[MonthlyCharges])
```

---

## Average Customer Tenure

```DAX
Average Customer Tenure =
AVERAGE(customer_churn[tenure])
```

---

## Total Revenue

```DAX
Total Revenue =
SUM(customer_churn[MonthlyCharges])
```

---

## Churned Revenue

```DAX
Churned Revenue =
CALCULATE(
    SUM(customer_churn[MonthlyCharges]),
    customer_churn[Churn] = "Yes"
)
```

---

## Retained Revenue

```DAX
Retained Revenue =
CALCULATE(
    SUM(customer_churn[MonthlyCharges]),
    customer_churn[Churn] = "No"
)
```

---

## High Risk Customers

```DAX
High Risk Customers =
CALCULATE(
    COUNT(customer_churn[customerID]),
    customer_churn[Contract] = "Month-to-month",
    customer_churn[MonthlyCharges] > 70,
    customer_churn[tenure] < 12
)
```