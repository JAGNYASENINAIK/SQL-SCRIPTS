select
FirstName,Country,
CONCAT(FirstName, Country) AS Name_Country
FROM Sales.Customers
