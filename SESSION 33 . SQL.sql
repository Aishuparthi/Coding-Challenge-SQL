SELECT *
FROM Customers
WHERE city = (
    SELECT city
    FROM Customers
    WHERE customer_name = 'Arjun Kumar'
);

SELECT *
FROM Products
WHERE price > (
    SELECT AVG(price)
    FROM Products
);

SELECT *
FROM Products
WHERE category = (
    SELECT category
    FROM Products
    WHERE product_name = 'Laptop'
);

SELECT c.customer_id, c.customer_name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) >
(
    SELECT COUNT(*)
    FROM Orders
    WHERE customer_id = 5
);

SELECT c.customer_id, c.customer_name
FROM Customers c
JOIN Orders o ON c.customer_id = o.customer_id
GROUP BY c.customer_id, c.customer_name
HAVING COUNT(o.order_id) >
(
    SELECT COUNT(*)
    FROM Orders
    WHERE customer_id = 5
);

SELECT *
FROM Products
WHERE price > (
    SELECT price
    FROM Products
    WHERE product_id = 3
);

