#Check total rows
SELECT COUNT(*) AS total_rows
FROM superstore_sales;

#Check date range
SELECT 
	MIN(order_date) AS start_date,
    MAX(order_date) AS end_date
FROM superstore_sales;

#Check missing sales values
SELECT COUNT(*) AS null_sales
FROM superstore_sales
WHERE sales IS NULL;