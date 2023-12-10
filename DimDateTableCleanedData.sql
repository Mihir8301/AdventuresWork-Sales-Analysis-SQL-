-- Cleansed DIM Date Table -- 

SELECT [DateKey],
[FullDateAlternatekey] AS Date, 
[EnglishDayNameOfWeek] AS Day, 
[WeekNumberOfYear] AS WeekNumeber,
[EnglishMonthName] AS Month, 
Left([EnglishMonthName], 3) AS MonthShort,
[MonthNumberOfYear] AS MonthNumber,
[CalendarQuarter] AS Quarter, 
[CalendarYear] AS Year 
FROM [AdventureWorksDW2019].[dbo].[DimDate]
WHERE CalendarYear > = 2021
