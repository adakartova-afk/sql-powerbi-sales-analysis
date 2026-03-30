SELECT 
    substr(o.order_purchase_timestamp, 1, 7) AS month,
    SUM(oi.price) AS revenue
FROM orders o
JOIN order_items oi
    ON o.order_id = oi.order_id
GROUP BY month
ORDER BY month;

SELECT 
    substr(order_purchase_timestamp, 1, 7) AS month,
    COUNT(DISTINCT order_id) AS total_orders
FROM orders
GROUP BY month
ORDER BY month;

WITH monthly_revenue AS (
    SELECT 
        substr(o.order_purchase_timestamp, 1, 7) AS month,
        SUM(oi.price) AS revenue
    FROM orders o
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY month
)
SELECT 
    month,
    ROUND(revenue, 2) AS revenue
FROM monthly_revenue
ORDER BY revenue DESC;
