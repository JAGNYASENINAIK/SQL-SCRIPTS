SELECT 
* 
FROM orders AS o
FULL JOIN customers AS  c
ON c.id=o.customer_id
WHERE  c.id is NULL  OR o.customer_id IS NULL