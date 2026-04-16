--Date Exploration 
SELECT MIN(order_date) AS first_order_date,
MAX(order_date) AS last_order_date,
DATEDIFF(year,MIN(order_date),MAX(order_date)) AS order_range_years,
DATEDIFF(month,MIN(order_date),MAX(order_date)) AS order_range_months
FROM gold01.fact_sales

SELECT MIN(birthdate) AS oldest_birthdate,
DATEDIFF(year, MIN(birthdate),GETDATE()) AS oldest_age,
DATEDIFF(year, Max(birthdate),GETDATE()) AS youngest_age,
MAX(birthdate) AS youngest_birthdate
FROM gold01.dim_customers