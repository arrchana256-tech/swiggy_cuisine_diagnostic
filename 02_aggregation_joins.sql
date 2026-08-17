---INNER JOIN +GROUP BY +HAVING

SELECT
count(o.order_id ) as total_orders,
cuisine,
sum(amount_inr) as total_revenue,
avg(amount_inr) as avg_revenue
from restaurants r
INNER join orders o 
on o.restaurant_id = r.restaurant_id
WHERE o.status = 'Delivered'
GROUP BY cuisine
having total_revenue >40000;

---LEFT JOIN +GROUP BY +ORDER BY

SELECT
    r.restaurant_id,
    r.name,
    COUNT(o.order_id) AS total_orders
FROM restaurants r
LEFT JOIN orders o
ON o.restaurant_id = r.restaurant_id
GROUP BY
    r.restaurant_id,
    r.name
ORDER BY
    total_orders ASC;






