# AI-Assisted Prompting Log

## Prompt Used

### Role
Act as a data analytics mentor helping with a BigBasket-style category performance project.

### Context
The project uses a deterministic BigBasket-style dataset and requires analysis using SQLite/SQL, Excel, Tableau Public, and Python/Pandas. The analysis should identify category and supplier performance and verify that the findings are consistent across tools.

### Task
Help with SQL queries, Excel analysis, Tableau dashboard creation, and Python/Pandas data cleaning and analysis. The Python analysis should clean missing values, duplicates, inconsistent text, and extreme outliers before calculating revenue by category and supplier.

### Constraints
- Use the provided deterministic dataset.
- Do not change the dataset generation logic.
- Use the same monthly revenue CSV for Excel and Tableau.
- Use Pandas for the independent raw-data cleaning.
- Verify that the SQL and Python analyses identify the same top category.
- Keep the analysis simple and reproducible.

### Format
Provide step-by-step instructions and simple code that can be directly used in the project.

## Verification Performed

The generated database was verified using Python and contained:

- 31 products
- 50 customers
- 500 orders
- 6 category targets

The order status distribution was also checked:

- 434 Delivered
- 42 Cancelled
- 24 Pending

The monthly SQL report was exported and contained 36 rows with a total delivered revenue of ₹88,282.

The Python raw-data analysis was independently cleaned and analyzed. It identified:

- Top category: Household Essentials
- Top supplier: HomeEssentials Traders

The SQL and Python analyses identified **Household Essentials** as the top-performing category.