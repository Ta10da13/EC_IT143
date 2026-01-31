/*
===========================================================
Script: EC_IT143_W5.2_Simpsons_GTN.sql
Author: Gerald Tatenda Nyamangwende
Community: Simpsons
Date: 2026-01-31
Purpose: Answers to 4 questions for Community 2 (sales_data)
===========================================================
*/

-- Question 1
-- Which product line generated the highest total sales?
-- Fields needed: PRODUCTLINE, SALES
SELECT PRODUCTLINE, SUM(SALES) AS total_sales
FROM sales_data
GROUP BY PRODUCTLINE
ORDER BY total_sales DESC;

-- Question 2
-- What is the average sales per order for each year?
-- Fields needed: YEAR_ID, SALES, ORDERNUMBER
SELECT YEAR_ID, AVG(SALES) AS avg_sales_per_order
FROM sales_data
GROUP BY YEAR_ID
ORDER BY YEAR_ID;

-- Question 3 
-- How many orders were placed per territory?
-- Fields needed: TERRITORY, ORDERNUMBER
SELECT TERRITORY, COUNT(ORDERNUMBER) AS orders_count
FROM sales_data
GROUP BY TERRITORY
ORDER BY orders_count DESC;

-- Question 4
-- Which customers spent the most overall?
-- Fields needed: CUSTOMERNAME, SALES
SELECT CUSTOMERNAME, SUM(SALES) AS total_spent
FROM sales_data
GROUP BY CUSTOMERNAME
ORDER BY total_spent DESC;
