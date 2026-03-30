SELECT ROUND(SUM(price), 2) AS total_revenue
FROM order_items;

SELECT COUNT(DISTINCT order_id) AS total_orders
FROM orders;

SELECT 
    ROUND(SUM(price) * 1.0 / COUNT(DISTINCT order_id), 2) AS average_order_value
FROM order_items;
