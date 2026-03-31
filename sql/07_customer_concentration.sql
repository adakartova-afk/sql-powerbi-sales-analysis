WITH customer_revenue AS (
    SELECT 
        c.customer_unique_id,
        SUM(oi.price) AS revenue
    FROM customers c
    JOIN orders o
        ON c.customer_id = o.customer_id
    JOIN order_items oi
        ON o.order_id = oi.order_id
    GROUP BY c.customer_unique_id
),
ranked_customers AS (
    SELECT 
        customer_unique_id,
        revenue,
        NTILE(10) OVER (ORDER BY revenue DESC) AS revenue_decile
    FROM customer_revenue
)
SELECT 
    CASE 
        WHEN revenue_decile = 1 THEN 'Top 10%'
        ELSE 'Bottom 90%'
    END AS customer_group,
    ROUND(SUM(revenue), 2) AS total_revenue
FROM ranked_customers
GROUP BY customer_group;
