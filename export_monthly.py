import sqlite3
import csv

conn = sqlite3.connect("bigbasket_capstone.db")
cur = conn.cursor()

q = """
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
ORDER BY p.category, month
"""

cur.execute(q)

rows = cur.fetchall()
columns = [x[0] for x in cur.description]

with open("monthly_category_revenue.csv", "w", newline="") as f:
    writer = csv.writer(f)
    writer.writerow(columns)
    writer.writerows(rows)

print("CSV created successfully")
print("Number of rows:", len(rows))

conn.close()