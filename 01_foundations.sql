-- WHERE
SELECT*
FROM restaurants
where city ="Delhi";

-- DISTINCT
SELECT DISTINCT cuisine
from restaurants;


-- ORDER BY + LIMIT
SELECT*
FROM orders
order by amount_inr desc
LIMIT 5;

-- LIKE
SELECT*
FROM restaurants
where name like "Sugar%";


-- IN
SELECT*
FROM customers
WHERE city in( "Delhi","Mumbai");


-- BETWEEN
SELECT*
FROM orders
where amount_inr
 BETWEEN 300 AND 800;


-- NOT BETWEEN
 SELECT*
FROM orders
WHERE amount_inr
NOT BETWEEN 300 AND 800;



-- IS NULL
SELECT*
from orders
where rating
is NULL;




