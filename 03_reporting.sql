-- A. Product revenue tier

SELECT p.product_id,
       p.product_name,
       SUM(o.amount_inr) AS total_revenue,
       CASE
           WHEN SUM(o.amount_inr) >= 3000 THEN 'High'
           WHEN SUM(o.amount_inr) >= 1000 THEN 'Medium'
           ELSE 'Low'
       END AS revenue_tier
FROM products p
LEFT JOIN orders o
ON p.product_id = o.product_id
AND o.status = 'Delivered'
GROUP BY p.product_id, p.product_name
ORDER BY total_revenue DESC;


-- B. Monthly category revenue report

SELECT p.category,
       strftime('%Y-%m', o.order_date) AS month,
       COUNT(o.order_id) AS order_count,
       SUM(o.amount_inr) AS total_revenue,
       AVG(o.amount_inr) AS avg_revenue
FROM orders o
JOIN products p
ON o.product_id = p.product_id
WHERE o.status = 'Delivered'
GROUP BY p.category, month
ORDER BY p.category, month;


-- C. Compare category revenue with targets

SELECT p.category,
       SUM(o.amount_inr) AS total_revenue,
       t.target_revenue_inr,
       t.target_revenue_inr - SUM(o.amount_inr) AS variance,
       ((SUM(o.amount_inr) - t.target_revenue_inr) * 100.0)
       / t.target_revenue_inr AS percentage_variance,
       CASE
           WHEN SUM(o.amount_inr) >= t.target_revenue_inr
               THEN 'Above Target'
           WHEN t.target_revenue_inr - SUM(o.amount_inr)
                <= t.target_revenue_inr * 0.15
               THEN 'Below Target - Watch'
           ELSE 'Below Target - Critical'
       END AS target_status
FROM orders o
JOIN products p
ON o.product_id = p.product_id
JOIN category_targets t
ON p.category = t.category
WHERE o.status = 'Delivered'
GROUP BY p.category, t.target_revenue_inr
ORDER BY total_revenue DESC;