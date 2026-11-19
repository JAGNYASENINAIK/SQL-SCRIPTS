INSERT INTO persons(id,person_name,birth_date,phone)
SELECT 
id,first_name,NULL,'UNKONWN'
FROM customers
SELECT * FROM persons