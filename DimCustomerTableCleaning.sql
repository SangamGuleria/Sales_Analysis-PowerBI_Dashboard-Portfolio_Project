--Cleaning Dim Customer Table
SELECT 
  c.CustomerKey as[CustomerKey] --,[GeographyKey]
  --,[CustomerAlternateKey]
  --,[Title]
  ,  c.FirstName as [FirstName] 
  --,[MiddleName]
  , c.lastname as [LastName], 
  c.Firstname + ' ' + lastname AS [FullName], 
  -- combined First Name and last name
  --,[NameStyle]
  --,[BirthDate]
  --,[MaritalStatus]
  --,[Suffix]
  case c.gender When 'M' THEN 'Male' WHEN 'F' THEN 'Female' END as [Gender] 
  --,[EmailAddress]
  --,[YearlyIncome]
  --,[TotalChildren]
  --,[NumberChildrenAtHome]
  --,[EnglishEducation]
  --,[SpanishEducation]
  --,[FrenchEducation]
  --,[EnglishOccupation]
  --,[SpanishOccupation]
  --,[FrenchOccupation]
  --,[HouseOwnerFlag]
  --,[NumberCarsOwned]
  --,[AddressLine1]
  --,[AddressLine2]
  --,[Phone]
  , 
  c.DateFirstPurchase AS DateFirstPurchase, 
  --,[CommuteDistance]
  g.city as [Customer City] -- joined in customer city from geography table
FROM 
  [dbo].[DimCustomer] AS c 
  left join dbo.dimgeography as g on g.geographykey = c.geographykey 
ORDER by 
  customerkey ASC --oder list by customer Key