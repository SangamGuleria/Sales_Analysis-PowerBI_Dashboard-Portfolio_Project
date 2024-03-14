-- Cleaning DIM_DateTable
SElECT 
  [DateKey], 
  [FullDateAlternateKey] AS Date, 
  --[DayNumberOfWeek]
  [EnglishDayNameOfWeek] AS Day 
  --,[SpanishDayNameOfWeek]
  -- ,[FrenchDayNameOfWeek]
  -- ,[DayNumberOfMonth]
  -- ,[DayNumberOfYear]
  , 
  [WeekNumberOfYear] AS WeekNr, 
  [EnglishMonthName] AS Month, 
  left ([EnglishMonthName], 3) AS MonthShort 
  -- ,[SpanishMonthName]
  -- ,[FrenchMonthName]
  , 
  [MonthNumberOfYear] AS MonthNr, 
  [CalendarQuarter] AS Quarter, 
  [CalendarYear] AS Year 
  -- ,[CalendarSemester]
  --,[FiscalQuarter]
  --,[FiscalYear]
  --,[FiscalSemester]
FROM 
  [AdventureWorksDW2022].[dbo].[DimDate]
  Where CalendarYear>=2019
