# BigBasket Category Performance Diagnostic

## Project Overview

This project analyzes BigBasket-style sales data using SQL, Excel/Google Sheets, Tableau Public, and Python.

The objective is to identify category performance, compare revenue with targets, analyze monthly trends, and clean a deliberately messy raw dataset.

## Tools Used

- SQLite / SQL
- Excel
- Tableau Public
- Python
- Pandas
- Matplotlib

## Dataset

The project uses a deterministic BigBasket-style dataset containing:

- 31 products
- 50 customers
- 500 orders
- 6 category targets

The database contains the following tables:

- products
- customers
- orders
- category_targets

## Regenerating the Dataset

Run the following command:

```bash
python generate_data.py
```
## SQL Analysis

SQL queries were used for:

- SELECT and WHERE
- DISTINCT
- ORDER BY and LIMIT
- Aliases using AS
- IN
- BETWEEN and NOT BETWEEN
- IS NULL
- INNER JOIN
- LEFT JOIN
- GROUP BY
- COUNT, SUM and AVG
- HAVING
- CASE statements
- Monthly category revenue
- Revenue target comparison

The delivered-order dataset contains 434 delivered orders with total revenue of ₹88,282.

## Excel Analysis

The SQL-generated monthly category revenue report was imported into Excel.

A pivot table was created to analyze:

- Category-wise revenue
- Category-wise order count
- Overall revenue

The Excel total was reconciled with the SQL result.

## Tableau Public Dashboard

View the interactive dashboard here:

[View the live Tableau Public dashboard](https://public.tableau.com/app/profile/kamalini.siva/viz/BigBasketCategoryPerformance_17893318370850/bigBasketcategoryperformance)

The dashboard contains:

- Category Revenue
- Monthly Revenue Trend
- Total Revenue KPI
- Total Delivered Orders KPI
- Average Order Value KPI
- Categories Meeting Target KPI
- Category target-status colors
- Interactive category filter

## Python Analysis

The raw order data was intentionally made messy using:

- Casing and spacing inconsistencies
- Missing revenue values
- Extreme revenue outliers
- Duplicate rows

Pandas was used to clean and analyze the raw data.

The cleaned Python analysis was compared with the SQL diagnostic to identify the same top-performing category.

## Data Story

The dashboard shows that 3 of the 6 categories are meeting or exceeding their revenue targets.

- Household Essentials — Above Target by ₹4,715 (+27.7%)
- Personal Care — Above Target by ₹882 (+5.7%)
- Bakery — Above Target by ₹3,410 (+28.4%)
- Dairy & Eggs — Below Target - Watch by ₹2,410 (-14.6%)
- Snacks & Beverages — Below Target - Critical by ₹2,105 (-16.2%)
- Fruits & Vegetables — Below Target - Critical by ₹2,210 (-18.4%)

Total delivered revenue is ₹88,282 from 434 delivered orders, giving an average order value of approximately ₹203.41.

## Recommendations

1. Prioritize inventory and marketing efforts for Household Essentials because it has the highest category revenue at ₹21,715 and is ₹4,715 (+27.7%) above its target.

2. Launch a targeted recovery review for Fruits & Vegetables and Snacks & Beverages because both are classified as Below Target - Critical, with shortfalls of ₹2,210 (18.4%) and ₹2,105 (16.2%) respectively.

## Files

- [generate_data.py](generate_data.py) – Generates the deterministic dataset
- [bigbasket_capstone.db](bigbasket_capstone.db) – SQLite database
- [orders_raw.csv](orders_raw.csv) – Raw order data
- [products.csv](products.csv) – Product data
- [01_foundations.sql](01_foundations.sql) – Foundation SQL queries
- [02_aggregation_joins.sql](02_aggregation_joins.sql) – Aggregation and join queries
- [03_reporting.sql](03_reporting.sql) – Reporting queries
- [export_monthly.py](export_monthly.py) – Exports monthly revenue report
- [monthly_category_revenue.csv](monthly_category_revenue.csv) – SQL-generated monthly report
- [analysis.xlsx](analysis.xlsx) – Excel analysis and category summary
- [analysis.ipynb](analysis.ipynb) – Python/Pandas analysis
- [ai_log.md](ai_log.md) – AI-assisted prompting and verification log
- [verify.sql](verify.sql) – Verification queries
- [readme.md](readme.md) – Project documentation