USE SalesDB

SELECT
o.OrderID  ,
o.Sales,
c.FirstName AS  CustomerFirstName,
c.LastName AS  CustomerLastName,
p.Product,
p.Price,
e.FirstName as SalespersonFirstName,
e.LastName as SalespersonLastName

FROM Sales.Orders AS o
LEFT JOIN Sales.Customers AS  c
ON o.CustomerID=c.CustomerID
LEFT JOIN Sales.Products AS p
ON o.ProductID=p.ProductID
LEFT JOIN Sales.Employees  AS  e
ON o.SalesPersonID=e.EmployeeID        