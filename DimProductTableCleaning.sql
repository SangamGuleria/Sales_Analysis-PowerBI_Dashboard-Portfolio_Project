--Cleansed DimProductTable
SELECT 
  p.[ProductKey], 
  p.[ProductAlternateKey] as PeoductItemCode
  --,[ProductSubcategoryKey]
  --,[WeightUnitMeasureCode]
  --,[SizeUnitMeasureCode]
  , 
  p.[EnglishProductName] As ProductName, 
  ps.EnglishProductSubcategoryName as [Sub Category], 
  -- Joined in from Sub Category Table
  pc.EnglishProductCategoryName as [Product Category], 
  -- Joined from Category Table
  --,[SpanishProductName]
  --,[FrenchProductName]
  --,[StandardCost]
  --,[FinishedGoodsFlag]
  p.[Color] AS [Product Color], 
  --,[SafetyStockLevel]
  --,[ReorderPoint]
  --,[ListPrice]
  p.[Size] AS [product Size] 
  --,[SizeRange]
  --,[Weight]
  --,[DaysToManufacture]
  , 
  p.[ProductLine] AS [Product Line] 
  -- ,[DealerPrice]
  -- ,[Class]
  -- ,[Style]
  , 
  p.[ModelName] AS [Product Model Name] 
  -- ,[LargePhoto]
  , 
  p.[EnglishDescription] AS [Product Description], 
  --,[FrenchDescription]
  -- ,[ChineseDescription]
  --,[ArabicDescription]
  --,[HebrewDescription]
  --,[ThaiDescription]
  --,[GermanDescription]
  --,[JapaneseDescription]
  --,[TurkishDescription]
  --,[StartDate]
  --,[EndDate]
  --,[Status]
  ISNULL (p.Status, 'Outdated') AS [Product Status] 
FROM 
  [dbo].[DimProduct] AS p 
  left join dbo.DimProductSubcategory as ps on ps.ProductSubcategoryKey = p.ProductSubcategoryKey 
  left join dbo.DimProductCategory as pc on ps.ProductCategoryKey = pc.ProductCategoryKey 
order by 
  p.ProductKey asc


