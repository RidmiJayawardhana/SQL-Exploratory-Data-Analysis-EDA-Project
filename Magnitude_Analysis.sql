--Magnitude Analysis
SELECT
    country,
    COUNT(customer_key) AS total_customers
FROM gold01.dim_customers
GROUP BY country
ORDER BY total_customers DESC;

SELECT
    gender,
    COUNT(customer_key) AS total_customers
FROM gold01.dim_customers
GROUP BY gender
ORDER BY total_customers DESC;

SELECT
    category,
    COUNT(product_key) AS total_products
FROM gold01.dim_products
GROUP BY category
ORDER BY total_products DESC;

SELECT
    category,
    AVG(cost) AS avg_cost
FROM gold01.dim_products
GROUP BY category
ORDER BY avg_cost DESC;

SELECT
    p.category,
    SUM(f.sales_amount) AS total_revenue
FROM gold01.fact_sales f
LEFT JOIN gold01.dim_products p
    ON p.product_key = f.product_key
GROUP BY p.category
ORDER BY total_revenue DESC;


SELECT
    c.customer_key,
    c.first_name,
    c.last_name,
    SUM(f.sales_amount) AS total_revenue
FROM gold01.fact_sales f
LEFT JOIN gold01.dim_customers c
    ON c.customer_key = f.customer_key
GROUP BY 
    c.customer_key,
    c.first_name,
    c.last_name
ORDER BY total_revenue DESC;

SELECT
    c.country,
    SUM(f.quantity) AS total_sold_items
FROM gold01.fact_sales f
LEFT JOIN gold01.dim_customers c
    ON c.customer_key = f.customer_key
GROUP BY c.country
ORDER BY total_sold_items DESC;
