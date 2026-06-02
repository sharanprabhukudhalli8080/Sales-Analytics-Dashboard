-- Sales Analytics Dashboard SQL Queries

-- Total Sales
SELECT ROUND(SUM(Sales),2) AS Total_Sales
FROM superstore;

-- Total Profit
SELECT ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore;

-- Total Orders
SELECT COUNT(DISTINCT `Order ID`) AS Total_Orders
FROM superstore;

-- Total Customers
SELECT COUNT(DISTINCT `Customer Name`) AS Total_Customers
FROM superstore;

-- Sales by Region
SELECT Region,
       ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY Region
ORDER BY Revenue DESC;

-- Profit by Category
SELECT Category,
       ROUND(SUM(Profit),2) AS Total_Profit
FROM superstore
GROUP BY Category
ORDER BY Total_Profit DESC;

-- Sales by Segment
SELECT Segment,
       ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY Segment
ORDER BY Revenue DESC;

-- Top 5 Customers by Sales
SELECT `Customer Name`,
       ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY `Customer Name`
ORDER BY Revenue DESC
LIMIT 5;

-- Monthly Sales Trend
SELECT MONTH(`Order Date`) AS Month,
       ROUND(SUM(Sales),2) AS Revenue
FROM superstore
GROUP BY MONTH(`Order Date`)
ORDER BY Month;

-- Average Order Value
SELECT ROUND(
       SUM(Sales) /
       COUNT(DISTINCT `Order ID`),2
       ) AS Avg_Order_Value
FROM superstore;

-- Profit Margin
SELECT ROUND(
       (SUM(Profit) / SUM(Sales))*100,2
       ) AS Profit_Margin_Percentage
FROM superstore;
