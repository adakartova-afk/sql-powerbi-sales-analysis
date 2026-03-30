SELECT 
    c.customer_unique_id,
    ROUND(SUM(oi.price), 2) AS total_spent
FROM customers c
JOIN orders o 
    ON c.customer_id = o.customer_id
JOIN order_items oi 
    ON o.order_id = oi.order_id
GROUP BY c.customer_unique_id
ORDER BY total_spent DESC
LIMIT 10;

WITH customer_orders AS (
    SELECT 
        c.customer_unique_id,
        o.order_id,
        o.order_purchase_timestamp,
        ROW_NUMBER() OVER (
            PARTITION BY c.customer_unique_id
            ORDER BY o.order_purchase_timestamp
        ) AS order_number
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
)
SELECT 
    CASE 
        WHEN order_number = 1 THEN 'new'
        ELSE 'returning'
    END AS customer_type,
    COUNT(*) AS total_orders
FROM customer_orders
GROUP BY customer_type;

WITH customer_order_counts AS (
    SELECT 
        c.customer_unique_id,
        COUNT(DISTINCT o.order_id) AS order_count
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    GROUP BY c.customer_unique_id
)
SELECT 
    COUNT(CASE WHEN order_count > 1 THEN 1 END) * 100.0 / COUNT(*) AS repeat_customer_rate
FROM customer_order_counts;
