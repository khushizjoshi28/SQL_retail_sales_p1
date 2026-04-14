#📊 Retail Sales Analysis

##📊 Project Overview

Project Title: Retail Sales Analysis
Level: Beginner
Database: pl_retail_db

This project focuses on analyzing retail sales data using SQL to extract meaningful insights and support data-driven decision-making. It demonstrates essential data analysis skills such as data cleaning, exploratory data analysis (EDA), and solving business problems using SQL queries.

The project includes creating a retail database, handling missing and inconsistent data, and analyzing customer behavior, product performance, and sales trends.
---

🎯 Objectives

- Set up a retail sales database and import data
- Perform data cleaning by handling NULL and missing values
- Conduct exploratory data analysis (EDA)
- Answer business questions using SQL queries

---


🛠️ Tools Used

- SQL (PostgreSQL / SQL Server)
- pgAdmin / SSMS
- CSV Dataset

---

📂 Project Structure

- Database creation and table setup
- Data import from CSV file
- Data cleaning and preprocessing
- SQL queries for analysis

---

📈 SQL Queries (Sample)

-- Total sales by category
SELECT product_category, SUM(total_amount) AS total_sales
FROM retail_sales
GROUP BY product_category;

-- Top 5 customers by spending
SELECT customer_id, SUM(total_amount) AS total_spent
FROM retail_sales
GROUP BY customer_id
ORDER BY total_spent DESC
LIMIT 5;

---

📌 Insights

- Identified top-performing product categories
- Analyzed customer purchasing behavior
- Observed trends in sales over time
- Cleaned and handled missing data effectively

---

🚀 Conclusion

This project demonstrates the ability to work with real-world data, perform data cleaning, and extract meaningful insights using SQL. It highlights key skills required for data analyst roles.

---
