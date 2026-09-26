CREATE DATABASE churn_db;

USE churn_db;

-- Total customers
SELECT COUNT(DISTINCT customerID) AS total_customers
FROM telco_churn_cleaned;

-- Churned customers
SELECT COUNT(*) AS churned_customers
FROM telco_churn_cleaned
WHERE Churn = 'Yes';

-- Calculate churn rate
SELECT
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END)
        / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn_cleaned;

-- Churn by contract
SELECT
    Contract,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn_cleaned
GROUP BY Contract
ORDER BY churn_rate DESC;

-- Churn by payment method
SELECT
    PaymentMethod,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn_cleaned
GROUP BY PaymentMethod
ORDER BY churn_rate DESC;

-- Customers by internet service
SELECT
    InternetService,
    COUNT(*) AS total_customers
FROM telco_churn_cleaned
GROUP BY InternetService
ORDER BY total_customers DESC;

-- Churn by internet service
SELECT
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn_cleaned
GROUP BY InternetService
ORDER BY churn_rate DESC;

-- Churn by gender
SELECT
    gender,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn_cleaned
GROUP BY gender;

-- Churn by senior citizen
SELECT
    SeniorCitizen,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn_cleaned
GROUP BY SeniorCitizen;

-- Churn by tenure group
SELECT
    TenureGroup,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn_cleaned
GROUP BY TenureGroup
ORDER BY TenureGroup;

-- Average tenure by churn
SELECT
    Churn,
    ROUND(AVG(tenure), 2) AS avg_tenure
FROM telco_churn_cleaned
GROUP BY Churn;

-- Average total charges by churn
SELECT
    Churn,
    ROUND(AVG(TotalCharges), 2) AS avg_total_charges
FROM telco_churn_cleaned
GROUP BY Churn;

-- Average monthly charges
SELECT
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM telco_churn_cleaned;

-- Customers with high monthly charges
SELECT
    customerID,
    MonthlyCharges,
    Contract,
    Churn
FROM telco_churn_cleaned
WHERE MonthlyCharges > 80
ORDER BY MonthlyCharges DESC;

-- Rank payment methods by churn
SELECT
    PaymentMethod,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_churn_cleaned
GROUP BY PaymentMethod
ORDER BY churned_customers DESC;

-- Churn by contract and internet service
SELECT
    Contract,
    InternetService,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers
FROM telco_churn_cleaned
GROUP BY Contract, InternetService
ORDER BY churned_customers DESC;

-- Churn by tech support
SELECT
    TechSupport,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn_cleaned
GROUP BY TechSupport
ORDER BY churn_rate DESC;

-- Churn by online security
SELECT
    OnlineSecurity,
    COUNT(*) AS total_customers,
    SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) AS churned_customers,
    ROUND(
        100.0 * SUM(CASE WHEN Churn = 'Yes' THEN 1 ELSE 0 END) / COUNT(*),
        2
    ) AS churn_rate
FROM telco_churn_cleaned
GROUP BY OnlineSecurity
ORDER BY churn_rate DESC;

-- Average monthly charge by contract
SELECT
    Contract,
    ROUND(AVG(MonthlyCharges), 2) AS avg_monthly_charges
FROM telco_churn_cleaned
GROUP BY Contract
ORDER BY avg_monthly_charges DESC;

-- Find high-risk customers
SELECT
    customerID,
    tenure,
    Contract,
    MonthlyCharges,
    InternetService,
    PaymentMethod,
    Churn
FROM telco_churn_cleaned
WHERE Churn = 'Yes'
  AND tenure <= 12
  AND MonthlyCharges > 70
ORDER BY MonthlyCharges DESC;












