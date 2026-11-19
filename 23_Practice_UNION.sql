--this  is not correct practice
--select * from Sales.Orders
--union 
--select * from Sales.OrdersArchive
      -- SELECT 
      -- [OrderID]
      --,[ProductID]
      --,[CustomerID]
      --,[SalesPersonID]
      --,[OrderDate]
      --,[ShipDate]
      --,[OrderStatus]
      --,[ShipAddress]
      --,[BillAddress]
      --,[Quantity]
      --,[Sales]
      --,[CreationTime]
      --FROM Sales.Orders
      --UNION
      --SELECT
      --[OrderID]
      --,[ProductID]
      --,[CustomerID]
      --,[SalesPersonID]
      --,[OrderDate]
      --,[ShipDate]
      --,[OrderStatus]
      --,[ShipAddress]
      --,[BillAddress]
      --,[Quantity]
      --,[Sales]
      --,[CreationTime]
      --FROM Sales.OrdersArchive

      --THIS IS  A BIT CORRECT BUT HERE WE HAVE SAME ORDER ID SO WE CAN KNOW FROM WHICH TABLE 
      --IT IS SO WE WILL ADD STATIC FOR BETTER PRACTICE

      SELECT 
      'Orders' as SourceTable,
       [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
      FROM Sales.Orders
      UNION
      SELECT
      'OrdersArchieve' AS SourceTable,
      [OrderID]
      ,[ProductID]
      ,[CustomerID]
      ,[SalesPersonID]
      ,[OrderDate]
      ,[ShipDate]
      ,[OrderStatus]
      ,[ShipAddress]
      ,[BillAddress]
      ,[Quantity]
      ,[Sales]
      ,[CreationTime]
      FROM Sales.OrdersArchive
      ORDER BY OrderID