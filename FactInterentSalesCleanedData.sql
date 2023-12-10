-- Cleansed FACT_InternetSales Table --
SELECT 
  [ProductKey], 
  [OrderDateKey], 
  LEFT([OrderDateKey], 4) AS Year,
  [DueDateKey], 
  [ShipDateKey], 
  [CustomerKey], 
  [SalesOrderNumber], 
  [SalesAmount] 
FROM 
  [AdventureWorksDW2019].[dbo].[FactInternetSales]
WHERE 
  LEFT ([OrderDateKey], 4) >= YEAR(GETDATE()) -2
ORDER BY
  OrderDateKey ASC