.headers off
.mode column

SELECT '';
SELECT'--- Total Sales ---';

.headers on

SELECT SUM(Sales_Amount) AS total_revenue
FROM sales

.headers off

SELECT '';
SELECT'--- Sales by Product Category ---';

.headers on

SELECT Product_Category,
       SUM(Sales_Amount) AS total_sales
FROM sales
GROUP BY Product_Category
ORDER BY total_sales DESC;

.headers off

SELECT '';
SELECT'--- Sales by Region ---';

.headers on

SELECT Region,
       SUM(Sales_Amount) AS total_sales
FROM sales
GROUP BY Region
ORDER BY total_sales DESC;

.headers off

SELECT '';
SELECT '--- Sales by Sales Representative ---';

.headers on

SELECT Sales_Rep,
       SUM(Sales_Amount) AS total_sales
FROM sales
GROUP BY Sales_Rep
ORDER BY total_sales DESC;

.headers off

SELECT '';
SELECT '--- Payment Method Analysis ---';

.headers on

SELECT Payment_Method,
       COUNT(*) AS number_of_transactions
FROM sales
GROUP BY Payment_Method
ORDER BY number_of_transactions DESC;

.headers off 

SELECT '';
SELECT '--- Customer Type Analysis ---';

.headers on

SELECT Customer_Type,
       SUM(Sales_Amount) AS total_sales
FROM sales
GROUP BY Customer_Type
ORDER BY total_sales DESC;

.headers off

SELECT '';
SELECT'--- Average Sales by Channel ---';

.headers on

SELECT Sales_Channel,
       AVG(Sales_Amount) AS average_sales
FROM sales
GROUP BY Sales_Channel;

.headers off 

SELECT '';
SELECT'--- Profit Analysis ---';

.headers on 

SELECT Sales_Rep,
       SUM((Unit_Price - Unit_Cost) * Quantity_Sold) AS total_profit
FROM sales
GROUP BY Sales_Rep
ORDER BY total_profit DESC;
