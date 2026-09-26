# Telecom Customer Churn Analysis

## 1. Introduction

This project analyzes **customer churn** for a telecom company using **Python, SQL, and Power BI**. The dataset contains **7,043 customers** with information about customer demographics, services, contracts, payment methods, monthly charges, total charges, and churn status.

The main objectives of this analysis are:

- To understand customer churn patterns.
- To identify customer segments with higher churn rates.
- To analyze churn based on contracts, payment methods, internet services, and customer tenure.
- To clean and prepare the dataset using Python.
- To perform business-focused analysis using SQL.
- To create an interactive Power BI dashboard.
- To generate useful business insights from customer churn data.

---

## 2. Dataset Information

The dataset contains **7,043 rows and 21 columns**.

### Key Features

- **Customer Information:** Customer ID, Gender, Senior Citizen, Partner, Dependents.
- **Services:** Phone Service, Multiple Lines, Internet Service, Online Security, Online Backup, Device Protection, Tech Support, Streaming TV, Streaming Movies.
- **Contract & Billing:** Contract, Paperless Billing, Payment Method, Monthly Charges, Total Charges.
- **Target Variable:** `Churn` (Yes/No).

---

## 3. Methodology

The project follows an end-to-end data analytics workflow using **Python, SQL, and Power BI**.

### 1️⃣ Data Preparation & Cleaning – Python

- Loaded the telecom customer churn dataset using **Pandas**.
- Checked data types, missing values, and duplicate records.
- Converted `TotalCharges` into numeric format.
- Handled missing values and prepared the cleaned dataset.
- Performed exploratory data analysis to understand customer churn patterns.
- Created visualizations using **Matplotlib**.

### 2️⃣ Data Analysis – SQL

- Loaded the cleaned dataset into **MySQL**.
- Used SQL queries to analyze customer churn.
- Calculated key metrics such as total customers, churned customers, and churn rate.
- Analyzed churn across contract type, payment method, and other customer attributes.
- Used SQL results to support the analysis and business insights.

### 3️⃣ Dashboard & Visualization – Power BI

- Imported the cleaned dataset into **Power BI**.
- Created KPI cards for key customer and churn metrics.
- Built interactive visualizations to analyze churn by contract, payment method, internet service, tenure, and other factors.
- Designed an interactive dashboard to present the findings clearly.

---

## 4. Key Calculations & KPIs

| KPI | Value |
|---|---:|
| Total Customers | 7,043 |
| Churned Customers | 1,869 |
| Churn Rate | 26.54% |
| Average Monthly Charges | 64.76 |
| Total Charges | 16.06 Million |

---

## 5. Detailed Analysis

### Churn by Contract

The analysis shows the following churn rates:

| Contract Type | Churn Rate |
|---|---:|
| Month-to-month | 42.71% |
| One year | 11.27% |
| Two year | 2.83% |

Month-to-month customers have a higher churn rate compared with customers on one-year and two-year contracts.

### Churn by Payment Method

The churn rates by payment method are:

| Payment Method | Churn Rate |
|---|---:|
| Electronic check | 45.29% |
| Mailed check | 19.11% |
| Bank transfer (automatic) | 16.71% |
| Credit card (automatic) | 15.24% |

Electronic check customers have the highest churn rate among the payment methods in this dataset.

### Churn by Internet Service

The churn rates by internet service are:

| Internet Service | Churn Rate |
|---|---:|
| Fiber optic | 41.89% |
| DSL | 18.96% |
| No internet service | 7.40% |

Fiber optic customers have a higher churn rate compared with DSL and customers without internet service.

### Churn by Tenure

The churn rates by tenure group are:

| Tenure Group | Churn Rate |
|---|---:|
| 0-1 Year | 47.68% |
| 1-2 Years | 28.71% |
| 2-4 Years | 20.39% |
| 4-5 Years | 14.42% |
| 5-6 Years | 6.61% |

The analysis shows higher churn among customers with shorter tenure.

### Average Monthly Charges

The average monthly charges by churn status are:

| Churn Status | Average Monthly Charges |
|---|---:|
| No | 61.27 |
| Yes | 74.44 |

Churned customers have a higher average monthly charge than retained customers in this dataset.

### Total Charges

Total charges by churn status:

| Churn Status | Total Charges |
|---|---:|
| No | 13,193,241.8 |
| Yes | 2,862,926.9 |

The overall total charges in the dataset are approximately **16.06 million**.

---

## 6. Business Insights

Based on the analysis:

- **Month-to-month customers** have a higher churn rate than customers on longer-term contracts.
- **Electronic check customers** have the highest churn rate among the payment methods analyzed.
- **Fiber optic customers** have a higher churn rate than DSL and customers without internet service.
- Customers with **shorter tenure** show higher churn rates.
- **Churned customers have higher average monthly charges** than retained customers.
- The overall churn rate is **26.54%**.
- The analysis highlights specific customer segments that can be investigated further for customer retention strategies.

---

## 7. Recommendations

Based on the analysis, the following areas can be considered for further business investigation:

### Contract Strategy

- Investigate why month-to-month customers have higher churn.
- Analyze suitable long-term contract options for customers who are currently month-to-month.

### Payment Method

- Investigate the reasons for the higher churn rate among electronic check customers.
- Analyze the customer experience associated with different payment methods.

### Internet Service

- Investigate service quality, pricing, and customer experience among fiber optic customers.
- Analyze whether service-related factors are associated with the higher churn rate.

### Early Customer Retention

- Closely monitor customers during their first year.
- Analyze onboarding and early customer experience because shorter-tenure customers show higher churn.

### Customer Charges

- Review pricing and service combinations for customers with higher monthly charges.
- Analyze whether higher monthly charges are associated with particular services or customer segments.

---

## 8. Deliverables

The project includes the following files:

- 📁 **Raw Dataset:** https://github.com/deekshi215/Telecom_Customer_Churn_Analysis/blob/main/Telco_Customer_Churn.csv
- 🧹 **Cleaned Dataset:** https://github.com/deekshi215/Telecom_Customer_Churn_Analysis/blob/main/telco_churn_cleaned.csv
- 🐍 **Python Notebook:** https://github.com/deekshi215/Telecom_Customer_Churn_Analysis/blob/main/Data_Cleaning_and_EDA.py
- 🗃️ **SQL Queries:** https://github.com/deekshi215/Telecom_Customer_Churn_Analysis/blob/main/SQL%20Queries.sql
- 📊 **Power BI Dashboard:** https://github.com/deekshi215/Telecom_Customer_Churn_Analysis/blob/main/Power%20BI%20dashboard.pbix

---

## 9. Dashboard Previews

### 1️⃣ Overall Churn Overview

https://github.com/deekshi215/Telecom_Customer_Churn_Analysis/blob/main/Overall%20Churn%20Dashboard.png

### 2️⃣ Churn Analysis

https://github.com/deekshi215/Telecom_Customer_Churn_Analysis/blob/main/Churn%20Analysis%20Dashboard.png

---

## 10. Conclusion

This project highlights that **26.54% of telecom customers churn**, with higher churn observed among **Month-to-Month customers**, **Fiber Optic internet users**, and **Electronic Check payers**. Customers with **shorter tenure** also show higher churn rates.

Key strategies such as **encouraging long-term contracts**, **investigating payment-related issues**, **improving service experience**, and **focusing on early-tenure customers** can help improve customer retention.

The analysis combines **Python, SQL, and Power BI** to provide a clear view of customer churn patterns and support **data-driven business decisions**.
