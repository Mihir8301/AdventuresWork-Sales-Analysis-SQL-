-- Cleansed DIM_Customers Table --

SELECT 
  c.customerkey AS CustomerKey, 
  c.firstname AS [First Name], 
  c.lastname AS [Last Name], 
  c.firstname + ' ' + c.lastname AS [Full Name], 
  CASE c.gender 
  WHEN 'M' THEN 'Male'
  WHEN 'F' THEN 'Female' 
  END AS Gender,
  c.datefirstpurchase AS [Date First Purchase], 
  g.city AS [Customer City] 
FROM 
  [AdventureWorksDW2019].[dbo].[DimCustomer] as c
  INNER JOIN [AdventureWorksDW2019].[dbo].[dimgeography] AS g ON g.geographykey = c.geographykey 
ORDER BY 
  c.customerkey ASC 
