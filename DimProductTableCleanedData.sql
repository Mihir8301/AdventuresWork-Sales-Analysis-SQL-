-- Cleansed DIM_Products Table --
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] AS ProductItemCode, 
  p.[EnglishProductName] AS [Product Name], 
  ps.EnglishProductSubcategoryName AS [Sub Category], 
  pc.EnglishProductCategoryName AS [Product Category],
  p.[Color] AS [Product Color], 
  CASE
  WHEN p.Size IS NUll THEN 'NA'
  ELSE p.Size
  END AS [Product Size],

  CASE
  WHEN p.ProductLine IS NUll THEN 'NA'
  ELSE p.ProductLine
  END AS [Product Line],
  p.[ModelName] AS [Product Model Name], 
  p.[EnglishDescription] AS [Product Description], 
  
  CASE
  WHEN p.Status IS NUll THEN 'Outdated'
  ELSE  p.Status
  END AS [Product Status]
FROM 
  [AdventureWorksDW2019].[dbo].[DimProduct] as p
  INNER JOIN [AdventureWorksDW2019].[dbo].[DimProductSubcategory] AS ps ON ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  INNER JOIN[AdventureWorksDW2019].[dbo].[DimProductCategory] AS pc ON ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey ASC