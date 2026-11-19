SELECT
first_name,
LEN(first_name) AS L,
LEN(TRIM(first_name)) AS T
FROM customers
--WHERE first_name!=TRIM(first_name)
