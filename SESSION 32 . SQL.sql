SELECT o.order_id, o.order_date, c.customer_name
FROM Orders o
INNER JOIN Customers c
ON o.customer_id = c.customer_id;

SELECT c.customer_name, o.order_id, o.order_date
FROM Customers c
LEFT JOIN Orders o
ON c.customer_id = o.customer_id;

SELECT s.salesperson_name, o.order_id, o.order_date
FROM Orders o
RIGHT JOIN Salesperson s
ON o.salesperson_id = s.salesperson_id;

SELECT o.order_id, c.customer_name, p.product_name, o.quantity, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id
ORDER BY o.order_id;

SELECT c.customer_name, c.city, o.order_id, p.product_name, o.quantity, o.order_date
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id
WHERE c.city = 'Chennai';

SELECT o.order_id,
       p.price * o.quantity AS Total_Amount
FROM Orders o
JOIN Products p ON o.product_id = p.product_id;

SELECT c.customer_name,
       SUM(p.price * o.quantity) AS Total_Purchase
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id
GROUP BY c.customer_id, c.customer_name
ORDER BY Total_Purchase DESC
LIMIT 5;

SELECT s.salesperson_name,
       s.region,
       SUM(p.price * o.quantity) AS Total_Sales
FROM Salesperson s
LEFT JOIN Orders o ON s.salesperson_id = o.salesperson_id
LEFT JOIN Products p ON o.product_id = p.product_id
GROUP BY s.salesperson_name, s.region;

SELECT DISTINCT c.customer_name
FROM Orders o
JOIN Customers c ON o.customer_id = c.customer_id
JOIN Products p ON o.product_id = p.product_id
WHERE p.product_name = 'Laptop';

SELECT p.product_name,
       SUM(o.quantity) AS Total_Quantity
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY p.product_id, p.product_name
ORDER BY Total_Quantity DESC
LIMIT 1;

SELECT *
FROM Orders
WHERE MONTH(order_date) = 1
  AND YEAR(order_date) = 2025;

SELECT WEEK(order_date) AS Week_Number,
       COUNT(*) AS Total_Orders
FROM Orders
GROUP BY WEEK(order_date)
ORDER BY Week_Number;
SELECT MIN(order_date) AS Earliest_Order,
       MAX(order_date) AS Latest_Order
FROM Orders;

SELECT order_id,
       order_date,
       DAYNAME(order_date) AS Day_Name
FROM Orders;

SELECT DAYNAME(o.order_date) AS Day_Name,
       SUM(p.price * o.quantity) AS Total_Sales_Amount,
       SUM(o.quantity) AS Total_Quantity
FROM Orders o
JOIN Products p ON o.product_id = p.product_id
GROUP BY DAYNAME(o.order_date)
ORDER BY FIELD(DAYNAME(o.order_date),
               'Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday');




