
SELECT o.*
FROM orders o
JOIN customers c ON o.customer_id = c.customer_id
WHERE c.city = 'Bengaluru';


SELECT DISTINCT category
FROM products;


SELECT *
FROM orders
ORDER BY amount_inr DESC
LIMIT 5;


SELECT order_id, amount_inr AS order_value
FROM orders;


SELECT *
FROM orders
WHERE payment_mode IN ('UPI', 'Credit Card');


SELECT *
FROM orders
WHERE amount_inr BETWEEN 100 AND 500;


SELECT *
FROM orders
WHERE amount_inr NOT BETWEEN 100 AND 500;


SELECT *
FROM orders
WHERE rating IS NULL;