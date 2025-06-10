# Task 6: Sales Trend Analysis Using Aggregations

## 📌 Objective
Analyze monthly revenue and order volume from sales data using SQL.

## 🛠 Tools Used
- SQLite (via sqliteonline.com)
- SQL

## 🧾 Description
Grouped `order_date` by month/year using `STRFTIME()` and calculated:
- Monthly revenue using `SUM(amount)`
- Order volume using `COUNT(DISTINCT order_id)`

Also extracted the **Top 3 months by revenue**.

## 🖼 Sample Output

| Year | Month | Revenue | Orders |
|------|-------|---------|--------|
| 2022 | 01    | 350.00  | 2      |
| 2022 | 02    | 650.00  | 2      |
...

## 📎 Files
- `task6_sales_analysis.sql` — SQL queries
- `result.png` — screenshot of output
