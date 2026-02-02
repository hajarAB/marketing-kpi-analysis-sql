-- sales_metrics.sql
WITH daily_sales AS (
    SELECT
        product_id,
        AVG(quantity_sold) AS avg_daily_sales
    FROM sales
    GROUP BY product_id
)
SELECT p.product_id, p.product_name, ds.avg_daily_sales
FROM products p
JOIN daily_sales ds ON p.product_id = ds.product_id;


WITH daily_sales AS (
    SELECT
        product_id,
        AVG(quantity_sold) AS avg_daily_sales
    FROM sales
    GROUP BY product_id
)
SELECT 
    i.product_id,
    p.product_name,
    i.current_stock,
    i.reorder_point,
    ds.avg_daily_sales,
    CASE 
        WHEN ds.avg_daily_sales = 0 THEN NULL
        ELSE i.current_stock / ds.avg_daily_sales
    END AS days_until_stockout,
    CASE 
        WHEN i.current_stock / ds.avg_daily_sales < 7 THEN 'HIGH'
        WHEN i.current_stock / ds.avg_daily_sales < 14 THEN 'MEDIUM'
        ELSE 'LOW'
    END AS risk_level
FROM inventory i
JOIN products p ON i.product_id = p.product_id
JOIN daily_sales ds ON i.product_id = ds.product_id;



SELECT *
FROM inventory i
JOIN products p ON i.product_id = p.product_id
WHERE i.current_stock <= i.reorder_point;
