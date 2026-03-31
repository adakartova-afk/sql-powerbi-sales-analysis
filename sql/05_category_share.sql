WITH category_revenue AS (
    SELECT 
        p.product_category_name,
        SUM(oi.price) AS revenue
    FROM order_items oi
    JOIN products p
        ON oi.product_id = p.product_id
    GROUP BY p.product_category_name
),
total_sales AS (
    SELECT SUM(revenue) AS total_revenue
    FROM category_revenue
)
SELECT 
    cr.product_category_name,
    ROUND(cr.revenue, 2) AS revenue,
    ROUND(cr.revenue * 100.0 / ts.total_revenue, 2) AS revenue_share_pct
FROM category_revenue cr
CROSS JOIN total_sales ts
ORDER BY revenue DESC
LIMIT 10;
