--  CASE WHEN Tiering

SELECT
    r.restaurant_id,
    r.name,
    SUM(o.amount_inr) AS total_revenue,
    CASE
        WHEN SUM(o.amount_inr) >= 50000 THEN 'High'
        WHEN SUM(o.amount_inr) >= 20000 THEN 'Medium'
        ELSE 'Low'
    END AS revenue_tier
FROM restaurants r
INNER JOIN orders o
ON r.restaurant_id = o.restaurant_id
WHERE o.status = 'Delivered'
GROUP BY
    r.restaurant_id,
    r.name;

-- Monthly Business Report

SELECT
    r.cuisine,
    strftime('%Y-%m', o.order_date) AS month,
    COUNT(o.order_id) AS order_count,
    SUM(o.amount_inr) AS total_revenue,
    AVG(o.amount_inr) AS avg_revenue
FROM restaurants r
INNER JOIN orders o
ON r.restaurant_id = o.restaurant_id
WHERE o.status = 'Delivered'
GROUP BY
    r.cuisine,
    strftime('%Y-%m', o.order_date)
ORDER BY
    r.cuisine,
    month;

-- Target vs Actual Report

SELECT
    r.cuisine,
    SUM(o.amount_inr) AS total_revenue,
    ct.target_revenue_inr,
    ct.target_revenue_inr - SUM(o.amount_inr) AS variance,
    ((SUM(o.amount_inr) - ct.target_revenue_inr) * 100.0) /
    ct.target_revenue_inr AS percentage_variance,
    CASE
        WHEN SUM(o.amount_inr) >= ct.target_revenue_inr
            THEN 'Above Target'
        WHEN ((SUM(o.amount_inr) - ct.target_revenue_inr) * 100.0) /
             ct.target_revenue_inr >= -15
            THEN 'Below Target - Watch'
        ELSE 'Below Target - Critical'
    END AS performance
FROM restaurants r
INNER JOIN orders o
ON r.restaurant_id = o.restaurant_id
INNER JOIN cuisine_targets ct
ON r.cuisine = ct.cuisine
WHERE o.status = 'Delivered'
GROUP BY
    r.cuisine,
    ct.target_revenue_inr;