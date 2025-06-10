
-- Create the table
CREATE TABLE online_sales (
    order_id INTEGER,
    order_date DATE,
    amount DECIMAL(10,2),
    product_id INTEGER
);

-- Insert sample data
INSERT INTO online_sales VALUES (1, '2022-01-15', 200.00, 101);
INSERT INTO online_sales VALUES (2, '2022-01-20', 150.00, 102);
INSERT INTO online_sales VALUES (3, '2022-02-10', 400.00, 103);
INSERT INTO online_sales VALUES (4, '2022-02-25', 250.00, 104);
INSERT INTO online_sales VALUES (5, '2022-03-05', 500.00, 105);
INSERT INTO online_sales VALUES (6, '2022-03-12', 600.00, 106);
INSERT INTO online_sales VALUES (7, '2022-04-01', 300.00, 107);

-- Monthly revenue and order volume
SELECT 
    STRFTIME('%Y', order_date) AS year,
    STRFTIME('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue,
    COUNT(DISTINCT order_id) AS monthly_order_volume
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    year, month;

-- Top 3 revenue months
SELECT 
    STRFTIME('%Y', order_date) AS year,
    STRFTIME('%m', order_date) AS month,
    SUM(amount) AS monthly_revenue
FROM 
    online_sales
GROUP BY 
    year, month
ORDER BY 
    monthly_revenue DESC
LIMIT 3;
