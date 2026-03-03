#Lead Time
SELECT 
    order_id,
    DATEDIFF(ship_date, order_date) AS lead_time
FROM superstore_sales
LIMIT 10;

#Sales per Year
SELECT 
    YEAR(order_date) AS year,
    SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY YEAR(order_date)
ORDER BY year;

#YoY Growth for Sales
-- YoY Growth
SELECT 
    year,
    total_sales,
    ROUND(
        (total_sales - LAG(total_sales) OVER (ORDER BY year)) 
        / LAG(total_sales) OVER (ORDER BY year) * 100, 2
    ) AS yoy_growth_percent
FROM (
    SELECT 
        YEAR(order_date) AS year,
        SUM(sales) AS total_sales
    FROM superstore_sales
    GROUP BY YEAR(order_date)
) t;

#Total Orders
SELECT COUNT(DISTINCT order_id) AS total_orders
FROM superstore_sales;

#Top Category by Sales
SELECT 
    category,
    SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY category
ORDER BY total_sales DESC
LIMIT 1;

#Average Lead Time
SELECT 
    ROUND(AVG(DATEDIFF(ship_date, order_date)), 2) AS avg_lead_time_days
FROM superstore_sales;

#Percentage of Slow Orders
SELECT 
    ROUND(
        SUM(CASE WHEN DATEDIFF(ship_date, order_date) > 5 THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS slow_order_percent
FROM superstore_sales;

#Sales by Month
SELECT 
    DATE_FORMAT(order_date, '%Y-%m') AS month,
    SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY DATE_FORMAT(order_date, '%Y-%m')
ORDER BY month;

#Sales by Segment
SELECT 
    segment,
    SUM(sales) AS total_sales,
    ROUND(SUM(sales) / (SELECT SUM(sales) FROM superstore_sales) * 100, 2) AS contribution_percent
FROM superstore_sales
GROUP BY segment
ORDER BY total_sales DESC;

#Lead Time by Region
SELECT 
    region,
    ROUND(AVG(DATEDIFF(ship_date, order_date)), 2) AS avg_lead_time
FROM superstore_sales
GROUP BY region
ORDER BY avg_lead_time DESC;

#Regional Shipping Performance
SELECT 
    region,
    ROUND(
        SUM(CASE WHEN DATEDIFF(ship_date, order_date) > 5 THEN 1 ELSE 0 END)
        / COUNT(*) * 100, 2
    ) AS slow_order_percent
FROM superstore_sales
GROUP BY region
ORDER BY slow_order_percent DESC;

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

#Top 5 Products
SELECT 
    product_name,
    SUM(sales) AS total_sales
FROM superstore_sales
GROUP BY product_name
ORDER BY total_sales DESC
LIMIT 5;