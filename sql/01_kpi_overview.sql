SELECT ROUND(SUM(price), 2) AS total_revenue
FROM order_items;

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

WITH order_revenue AS (
    SELECT 
        order_id,
        SUM(price) AS order_value
    FROM order_items
    GROUP BY order_id
)
SELECT 
    ROUND(AVG(order_value), 2) AS average_order_value
FROM order_revenue;
