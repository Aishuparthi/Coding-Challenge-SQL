SELECT *
FROM Customers
ORDER BY customer_name ASC;

SELECT *
FROM Products
ORDER BY price DESC
LIMIT 3;

SELECT COUNT(*) AS Total_Customers
FROM Customers;

SELECT city, COUNT(*) AS Customer_Count
FROM Customers
GROUP BY city;

SELECT gender, COUNT(*) AS Gender_Count
FROM Customers
GROUP BY gender;

SELECT city, COUNT(*) AS Customer_Count
FROM Customers
GROUP BY city
HAVING COUNT(*) > 2;

SELECT customer_id, COUNT(*) AS Total_Orders
FROM Orders
GROUP BY customer_id
HAVING COUNT(*) > 3;

SELECT *
FROM Products
WHERE price > 5000
ORDER BY price DESC
LIMIT 3;

SELECT product_id, SUM(quantity) AS Total_Quantity
FROM Orders
GROUP BY product_id
HAVING SUM(quantity) BETWEEN 5 AND 8;

SELECT city, COUNT(*) AS Customer_Count
FROM Customers
GROUP BY city
ORDER BY Customer_Count DESC;

SELECT *
FROM Customers
WHERE city IN ('Chennai', 'Pune', 'Hyderabad')
ORDER BY customer_name ASC;

SELECT *
FROM Customers
WHERE city IN ('Chennai', 'Pune', 'Hyderabad')
ORDER BY customer_name ASC;

SELECT *
FROM Products
WHERE category NOT IN ('Electronics')
  AND price < 10000;

SELECT *
FROM Customers
WHERE customer_name LIKE 'A%'
ORDER BY customer_id ASC;

SELECT category, AVG(price) AS Avg_Price
FROM Products
GROUP BY category
HAVING AVG(price) > 5000;
