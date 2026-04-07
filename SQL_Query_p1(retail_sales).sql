--CREATE TABLE 
DROP TABLE IF EXISTS retail_sales;
CREATE TABLE retail_sales (
transactions_id INT PRIMARY KEY,
   sale_date DATE,
   sale_time TIME,
   customer_id INT,
   gender VARCHAR(15),
   age INT,
   category VARCHAR(15),
   quantiy INT,
   price_per_unit FLOAT,
   cogs FLOAT,
   total_sale FLOAT
);

SELECT*FROM retail_sales;
SELECT*FROM retail_sales LIMIT 10;
--DATA CLEANING 
SELECT*FROM retail_sales
WHERE 
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR
	 sale_time IS NULL
	 OR
	 customer_id IS NULL
	 OR
	 gender IS NULL
	 OR 
	 age IS NULL
	 OR
	 category IS NULL 
	 OR 
	 quantiy IS NULL
	 OR 
	 price_per_unit IS NULL 
	 OR
	 cogs IS NULL
	 OR
	 total_sale IS NULL;

DELETE FROM retail_sales
WHERE 
     transactions_id IS NULL
	 OR
	 sale_date IS NULL
	 OR
	 sale_time IS NULL
	 OR
	 customer_id IS NULL
	 OR
	 gender IS NULL
	 OR 
	 age IS NULL
	 OR
	 category IS NULL 
	 OR 
	 quantiy IS NULL
	 OR 
	 price_per_unit IS NULL 
	 OR
	 cogs IS NULL
	 OR
	 total_sale IS NULL;
--DATA EXPLORATION 

--HOW MANY SALES WE HAVE?
SELECT COUNT(*) as total_sale FROM  retail_sales

--HOW MANY COUSTOMERS WE HAVE ?
SELECT COUNT(DISTINCT customer_id)as total_sale FROM retail_sales

--HOW MANY CATERGORY WE HAVE?
SELECT DISTINCT category FROM retail_sales

--DATA ANALYSIS & BUSINESS KEY PROBLEMS & ANSWERS

--MY ANALYSIS & FINDINGS
-- ***Q.1 Write a SQL query to retrieve all columns for sales made on'2022-11-05'
'''SQL
SELECT *
 FROM retail_sales
 where sale_date='2022-11-05';
'''
	
-- ***Q.2 Wrtie a SQL query to find the average age of customers who purchased items from the 'BEAUTY' category.
'''SQL
SELECT 
 AVG(age)as Avg_age
 FROM retail_sales
WHERE category='Beauty'
'''

-- ***Q.3 Write a SQL query to all transactions where the total_sale is greater than 1000.
'''SQL
 SELECT*FROM retail_sales
 WHERE total_sale>1000
'''
-- ***Q.4 Write a SQL query to find the top 5 customers based on the highest total sales.
'''SQL
SELECT 
     customer_id,
     SUM(total_sale)as total_sales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
'''
	
-- ***Q.5 Write a SQL query to calculate the average sale for each month. find out best selling month in each year.
'''SQL
SELECT 
      year,
	  month,
	  avg_sale
FROM
(
SELECT 
      EXTRACT(YEAR FROM sale_date)as year,
	  EXTRACT(MONTH FROM sale_date)as month,
	  AVG(total_sale) as avg_sale,
	  RANK() OVER(PARTITION BY EXTRACT(YEAR FROM sale_date)ORDER BY AVG(total_sale)DESC)
	  FROM retail_sales
GROUP BY 1,2
)as t1
WHERE rank = 1
'''
	
-- ***Q.6 Write a SQL query to find the number of unique customers who purchased items from each category.
'''SQL
SELECT 
      category,
	  COUNT(DISTINCT customer_id) as cnt_unique_cs
FROM retail_sales
GROUP BY category
'''
	
-- ***Q.7 Write a SQL query to find the top 5 based on the highest total sales. 
'''SQL
SELECT 
      customer_id,
	  SUM(total_sale)as total_sales
FROM retail_sales
GROUP BY 1
ORDER BY 2 DESC
LIMIT 5
'''

	
## My Anaktsis & Findings

- **Customer Demographics: The dataset includes customers from different age groups, with sales distributed across multiple product categories.

- **High-Value Transactions: Several transactions have a total sale amount greater than 1000, indicating premium or bulk purchases.

- **Sales Trends: Monthly analysis shows variations in sales, helping identify peak sales periods and low-performing phases.

- **Top Customers: A small group of customers contributes significantly to overall revenue.

- **Popular Categories: Certain product categories consistently generate higher sales, showing strong customer preference.

- **Customer Distribution: Some categories attract more unique customers, while others depend on repeat purchases.

	

## Reports

- **Sales Summary**: A detailed report summarizing total sales, customer demographics, and category performance.
- **Trend Analysis**: Insights into sales trends across different months and shifts.
- **Customer Insights**: Reports on top customers and unique customer counts per category.

## Conclusion

This project serves as a comprehensive introduction to SQL for data analysts, covering database setup, data cleaning, exploratory data analysis, and business-driven SQL queries. The findings from this project can help drive business decisions by understanding sales patterns, customer behavior, and product performance.

## How to Use

1. **Clone the Repository**: Clone this project repository from GitHub.
2. **Set Up the Database**: Run the SQL script provided in the 'database_setup.sql' file to create and populate the database.
3. **Run the Queries**: Use the SQL queries provided in the 'analysis_queries.sql' file to perform your analysis.
4. **Explore and Modify**: Feel free to modify the queries to explore different aspects of the dataset or answer additional business questions.

## Author

**Khushi Joshi**  
Aspiring Data Analyst

---




