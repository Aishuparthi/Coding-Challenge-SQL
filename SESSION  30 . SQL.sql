SELECT DISTINCT city
FROM Customers;

SELECT DISTINCT category
FROM Products;

SELECT customer_name AS Customer_Name,
       email AS Email_ID
FROM Customers;

SELECT product_name,
       price,
       price * 2 AS DoublePrice
FROM Products;

SELECT *
FROM Customers
WHERE city = 'Hyderabad';

SELECT *
FROM Products
WHERE price > 10000;

SELECT *
FROM Orders
WHERE order_date > '2025-01-12';

SELECT product_name,
       price,
       price * 1.10 AS Price_With_Tax
FROM Products;

SELECT *
FROM Customers
WHERE gender = 'F'
  AND city = 'Chennai';

SELECT *
FROM Products
WHERE price <> 1500;

SELECT *
FROM Customers
WHERE email IS NULL;

SELECT *
FROM Orders
WHERE quantity IS NOT NULL;

SELECT *
FROM Customers
WHERE city IN ('Chennai', 'Bangalore', 'Hyderabad');

SELECT *
FROM Products
WHERE category NOT IN ('Electronics', 'Furniture');








