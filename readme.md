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

https://public.tableau.com/app/profile/kamalini.siva/viz/BigBasketCategoryPerformance_17893318370850/bigBasketcategoryperformance

The dashboard contains:

- Category Revenue
- Monthly Revenue Trend

## Python Analysis

The raw order data was intentionally made messy using:

- Casing and spacing inconsistencies
- Missing revenue values
- Extreme revenue outliers
- Duplicate rows

Pandas was used to clean and analyze the raw data.

The cleaned Python analysis was compared with the SQL diagnostic to identify the same top-performing category.

## Data Story

The analysis shows that Household Essentials is the top-performing category by revenue.

After cleaning the raw dataset using Pandas, Household Essentials generated ₹20,968 in revenue and remained the top category identified by the SQL analysis.

The top supplier was HomeEssentials Traders, which also generated ₹20,968 in revenue.

The SQL and Python analyses therefore point to the same top-performing category.

## Recommendation

Household Essentials should be prioritized for inventory planning and promotional activities because it is the strongest revenue-generating category in the analysis.

HomeEssentials Traders is also the leading supplier and can be monitored closely to maintain product availability.

The business should also monitor the monthly revenue trends and investigate categories that are below their revenue targets.

## Files

- `generate_data.py` – Generates the deterministic dataset
- `bigbasket_capstone.db` – SQLite database
- `orders_raw.csv` – Raw order data
- `products.csv` – Product data
- `db.sql` – Foundation SQL queries
- `02_aggregation_joins.sql` – Aggregation and join queries
- `03_reporting.sql` – Reporting queries
- `export_monthly.py` – Exports monthly revenue report
- `monthly_category_revenue.csv` – SQL-generated monthly report
- `analysis.xlsx` – Excel analysis
- `analysis.ipynb` – Python/Pandas analysis
- `ai_log.md` – AI-assisted prompting and verification log