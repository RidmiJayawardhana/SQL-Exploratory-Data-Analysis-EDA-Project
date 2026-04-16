--Dimensions Exploration
SELECT DISTINCT country FROM gold01.dim_customers

SELECT DISTINCT category, subcategory, product_name FROM gold01.dim_products
ORDER BY 1,2,3