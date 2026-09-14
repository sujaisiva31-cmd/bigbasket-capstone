-- Verify table row counts
SELECT 'products' AS table_name, COUNT(*) AS row_count FROM products
UNION ALL
SELECT 'customers', COUNT(*) FROM customers
UNION ALL
SELECT 'orders', COUNT(*) FROM orders
UNION ALL
SELECT 'category_targets', COUNT(*) FROM category_targets;

-- Verify order status counts
SELECT status, COUNT(*) AS order_count
FROM orders
GROUP BY status
ORDER BY status;

-- Verify monthly report
SELECT COUNT(*) AS monthly_rows,
       SUM(total_revenue) AS grand_total_revenue
FROM (
    SELECT p.category,
           strftime('%Y-%m', o.order_date) AS month,
           COUNT(o.order_id) AS order_count,
           SUM(o.amount_inr) AS total_revenue,
           AVG(o.amount_inr) AS avg_revenue
    FROM orders o
    INNER JOIN products p
    ON o.product_id = p.product_id
    WHERE o.status = 'Delivered'
    GROUP BY p.category, month
);