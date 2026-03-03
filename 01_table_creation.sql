SELECT DATABASE();
USE superstore_db;

CREATE TABLE superstore_sales (
    row_id INT,
    order_id VARCHAR(30),
    order_date DATE,
    ship_date DATE,
    ship_mode VARCHAR(30),
    customer_id VARCHAR(30),
    customer_name VARCHAR(100),
    segment VARCHAR(30),
    city VARCHAR(100),
    state VARCHAR(100),
    postal_code VARCHAR(20),
    region VARCHAR(30),
    product_id VARCHAR(30),
    category VARCHAR(50),
    sub_category VARCHAR(50),
    product_name VARCHAR(255),
    sales DECIMAL(12,2)
);

SELECT COUNT(*) FROM superstore_sales;
SHOW TABLES;
SELECT * FROM superstore_sales;
SELECT * FROM superstore_sales LIMIT 10;

SELECT MIN(order_date), MAX(order_date)
FROM superstore_sales;

#Lead Time
SELECT 
    order_id,
    DATEDIFF(ship_date, order_date) AS lead_time
FROM superstore_sales
LIMIT 10;

#Total Sales per Region
SELECT 
    region,
    SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY region
ORDER BY total_sales DESC;

#Total sales per category
SELECT 
    category,
    SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY category
ORDER BY total_sales DESC;

#Sales per Year
SELECT 
    YEAR(order_date) AS year,
    SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY YEAR(order_date)
ORDER BY year;




