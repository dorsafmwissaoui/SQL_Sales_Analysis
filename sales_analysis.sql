.headers on
.mode column

-- Total Sales

SELECT SUM(Sales_Amount) AS total_revenue
FROM sales;


-- Sales by Product Category

SELECT Product_Category,
       SUM(Sales_Amount) AS total_sales
FROM sales
GROUP BY Product_Category
ORDER BY total_sales DESC;


-- Sales by Region

SELECT Region,
       SUM(Sales_Amount) AS total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;


-- Sales by Sales Representative

SELECT Sales_Rep,
       SUM(Sales_Amount) AS total_sales
FROM sales
GROUP BY Sales_Rep
ORDER BY total_sales DESC;


-- Payment Method Analysis

SELECT Payment_Method,
       COUNT(*) AS number_of_transactions
FROM sales
GROUP BY Payment_Method
ORDER BY number_of_transactions DESC;


-- Customer Type Analysis

SELECT Customer_Type,
       SUM(Sales_Amount) AS total_sales
FROM sales
GROUP BY Customer_Type
ORDER BY total_sales DESC;


-- Average Sales by Channel

SELECT Sales_Channel,
       AVG(Sales_Amount) AS average_sales
FROM sales
GROUP BY Sales_Channel;


-- Profit Analysis

SELECT Sales_Rep,
       SUM((Unit_Price - Unit_Cost) * Quantity_Sold) AS total_profit
FROM sales
GROUP BY Sales_Rep
ORDER BY total_profit DESC;
