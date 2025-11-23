# Client Retention Model - SQL, Excel & Power BI  

---

## Overview
This project demonstrates how data-driven insights can help businesses **increase client retention** using SQL for data preparation, Excel for cleaning, and Power BI for analysis and visualization.

A **predictive churn model** was developed to help a mid-sized service company understand and reduce customer churn.
18 months of client and support interaction data was analyzed.

---

## Problem Statement
A client noticed a steady decline in repeat business but lacked clear visibility into **why customers were churning**.  
The goal was to:
- Identify at-risk customers.
- Understand the behavioral and demographic factors driving churn.
- Recommend proactive retention strategies.

---

## Tools & Technologies
- **SQL:** Data extraction, transformation, and cleaning.  
- **Excel:** Preliminary data validation and summaries.  
- **Power BI:** Interactive dashboards and churn trend visualization.  

---

## Approach
1. **Data Collection & Preparation**
   - Queried 18 months of client and support data using SQL.
   - Cleaned and merged datasets in Excel.
2. **Exploratory Data Analysis (EDA)**
   - Identified top churn indicators (support frequency, tenure, satisfaction score).
   - Segmented clients by risk level (Low, Medium, High).
3. **Predictive Model**
   - Built a simple churn likelihood score based on interaction history.
4. **Dashboard Development**
   - Designed Power BI dashboard showing churn trends, key risk metrics, and retention KPIs.

---

## Key Insights Summary

| **Metric** | **Value / Insight** |
|------------|----------------------|
| **Total Clients** | **500** - The dataset covers 500 unique clients. |
| **Active Clients** | **332** - Roughly two-thirds (66%) of all clients are still active. |
| **Churn Rate** | **34%** - About one in three clients have churned. This is moderately high and indicates clear opportunities for improving retention. |
| **Average Satisfaction Score** | **3.2 / 5** - Slightly above average. Indicates mixed client sentiment, with a portion of dissatisfied clients likely contributing to churn. |
| **Total Revenue** | **$5.4M** - Reflects a strong overall client base value. Retaining high-value clients is financially important. |
| **Average Lifetime Spend** | **$1,114**  On average, each client contributes approximately $1.1K over their relationship with the company. |

---

### Interpretation

- A **34% churn rate** is a major area to target for improvement.  
- **Satisfaction score of 3.2** suggests room for enhancing client experience.  
- With **$5.4M in total revenue**, even small improvements in retention could yield major financial impact.  
- **Top-spending clients** are critical to retain given their contribution to lifetime value.  
- Clients with **low satisfaction scores (<3)** and **infrequent support interactions** had the highest churn rate.
- Retention improved by **30%** after implementing targeted engagement strategies.

---

## Deliverables
| Deliverable | Description |
|--------------|-------------|
| `Client_Retention_Data.csv` | Dataset used for modeling |
| `queries.sql` | SQL scripts for data cleaning & feature extraction |
| `Client Retention Model.pbix` | Power BI dashboard (hosted separately) |
| `images/` | Screenshots and visuals for README |
| `README.md` | Documentation for GitHub portfolio |

---

## Dashboard Features
- **Churn Rate Analysis** by support tickets, satisfaction score and period (month/year) 
- **Customer Lifetime Value (CLV)** trend  
- **Target Retention KPI Tracker** showing percentage retained

---

## Repository Structure
```
client-retention-model/
├─ data/
│  └─ Client_Retention_Data.csv
├─ sql/
│  └─ queries.sql
├─ powerbi/
│  └─ client retention model.pbix
├─ images/
│  └─ dashboard_preview.png
├─ README.md
├─ LICENSE
└─ .gitignore
```
---

## How to Reproduce
1. Clone the repository  
   ```bash
   git clone https://github.com/sylvia-brennan/client-retention-model.git
   ```
2. Open `queries.sql` in your SQL editor and run sequentially.  
3. Load the cleaned dataset into Power BI.  
4. Open `client retention model.pbix` to explore visualizations.

---

## Data Disclaimer
This dataset is synthetically generated for demonstration and does not contain real client information.

---

## Project Lead
**Sylvia Brennan** - Founder & Lead Data Analyst  
**LinkedIn:** [linkedin.com/in/sylvia-brennan](https://linkedin.com/in/sylvia-brennan)  
**GitHub:** [github.com/sylvia-brennan](https://github.com/sylviabrennan)
📧 hello@successfount.com|successfount@gmail.com
🌐 [www.successfount.com](https://www.successfount.com)

---

### Don't forget to star this repo if you find it insightful!
