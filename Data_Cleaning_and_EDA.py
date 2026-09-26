#!/usr/bin/env python
# coding: utf-8

# In[1]:


# Import libraries
import pandas as pd
import numpy as np
import matplotlib.pyplot as plt


# In[2]:


# Load the dataset
df = pd.read_csv("../01_Dataset/Telco_Customer_Churn.csv")


# In[3]:


# Check the first five rows
df.head()


# In[4]:


# Check number of rows and columns
df.shape


# In[5]:


# check all column names
df.columns.tolist()


# In[6]:


#check columns, datatypes and non-null values
df.info()


# In[7]:


# check summary statistics
df.describe()


# In[8]:


# Check missing values
df.isnull().sum()


# In[9]:


# check duplicate rows
df.duplicated().sum()



# In[10]:


# Convert totalcharges to numeric
df["TotalCharges"] = pd.to_numeric(df["TotalCharges"], errors="coerce")


# In[11]:


# Check missing total charges
df["TotalCharges"].isnull().sum()


# In[12]:


# Fill missing totalcharges
df["TotalCharges"] = df["TotalCharges"].fillna(0)


# In[13]:


# Check churn categories
df["Churn"].value_counts()


# In[14]:


# Check contract types
df["Contract"].value_counts()


# In[15]:


# Check payment methods
df["PaymentMethod"].value_counts()



# In[16]:


# Create tenure groups
df["TenureGroup"] = pd.cut(
    df["tenure"],
    bins=[-1, 12, 24, 48, 60, 72],
    labels=["0-1 Year", "1-2 Years", "2-4 Years",
            "4-5 Years", "5-6 Years"]
)


# In[17]:


# Count total customers
total_customers = df["customerID"].nunique()

print(total_customers)


# In[18]:


# Count churned customers
churned_customers = (df["Churn"] == "Yes").sum()

print(churned_customers)


# In[19]:


# Calculate churn rate
churn_rate = (churned_customers / total_customers) * 100

print(round(churn_rate, 2))


# In[20]:


# Calculate churn by contract
contract_churn = pd.crosstab(
    df["Contract"],
    df["Churn"],
    normalize="index"
) * 100

print(contract_churn)


# In[21]:


# Plot churn by contract
contract_churn["Yes"].plot(kind="bar")

plt.title("Churn Rate by Contract")
plt.xlabel("Contract Type")
plt.ylabel("Churn Rate (%)")
plt.xticks(rotation=0)
plt.show()


# In[22]:


# Calculate churn by payment method
payment_churn = pd.crosstab(
    df["PaymentMethod"],
    df["Churn"],
    normalize="index"
) * 100

print(payment_churn)


# In[23]:


# Plot churn by payment method
payment_churn["Yes"].plot(kind="bar")

plt.title("Churn Rate by Payment Method")
plt.xlabel("Payment Method")
plt.ylabel("Churn Rate (%)")
plt.xticks(rotation=45)
plt.show()


# In[24]:


# Calculate churn by internet service
internet_churn = pd.crosstab(
    df["InternetService"],
    df["Churn"],
    normalize="index"
) * 100

print(internet_churn)


# In[25]:


# Calculate churn by tenure group
tenure_churn = pd.crosstab(
    df["TenureGroup"],
    df["Churn"],
    normalize="index"
) * 100

print(tenure_churn)


# In[26]:


# Plot churn by tenure
tenure_churn["Yes"].plot(kind="bar")

plt.title("Churn Rate by Tenure")
plt.xlabel("Tenure Group")
plt.ylabel("Churn Rate (%)")
plt.xticks(rotation=45)
plt.show()


# In[27]:


# Calculate average monthly charges
avg_charges = df.groupby("Churn")["MonthlyCharges"].mean()

avg_charges


# In[28]:


# Plot average monthly charges
avg_charges.plot(kind="bar", figsize=(7, 4), width=0.2)

plt.title("Average Monthly Charges by Churn")
plt.xlabel("Churn")
plt.ylabel("Average Monthly Charges")
plt.xticks(rotation=0)

plt.show()


# In[29]:


# Compare revenue by churn
df.groupby("Churn")["TotalCharges"].sum()


# In[30]:


# Save cleaned dataset
df.to_csv(
    "../01_Dataset/telco_churn_cleaned.csv",
    index=False
)

