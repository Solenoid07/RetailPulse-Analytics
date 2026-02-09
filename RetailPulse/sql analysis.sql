/* PROJECT: RetailPulse Inventory Optimization
AUTHOR: Yuvansh Raj Saxena
GOAL: Identify stockout risks and revenue drivers.
*/

USE retail_db;

-- 1. SANITY CHECK
-- Checking the first few rows to ensure data integrity
SELECT * FROM sales_data LIMIT 10;

-- 2. REVENUE ANALYSIS
-- Identifying which category drives the most revenue
SELECT 
    Category, 
    SUM(Revenue) as Total_Revenue, 
    SUM(Units_Sold) as Total_Volume
FROM sales_data
GROUP BY Category
ORDER BY Total_Revenue DESC;

-- 3. THE "STOCKOUT TRAP" (KEY INSIGHT)
-- Identifying high-velocity items (>30 sold) with critical stock (<5).
-- These items are at risk of immediate stockout.
SELECT 
    Product_Name, 
    Category,
    SUM(Units_Sold) as Total_Sales_Velocity, 
    MIN(Stock_Remaining) as Current_Stock_Level,
    SUM(Revenue) as Total_Revenue_Risk
FROM sales_data
GROUP BY Product_Name, Category
HAVING SUM(Units_Sold) > 30 AND MIN(Stock_Remaining) < 5
ORDER BY Current_Stock_Level ASC;