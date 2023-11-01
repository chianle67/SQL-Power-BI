--Transform and Clean DimDate table--
SELECT
	DateKey,
	FullDateAlternateKey AS Date,
	EnglishDayNameOfWeek AS Day,
	EnglishMonthName AS MonthName,
	LEFT(EnglishMonthName,3) AS MonthNameShort,
	MonthNumberOfYear AS MonthNumber,
	CalendarQuarter AS Quarter,
    	CalendarYear AS Year
FROM AdventureWorksDW2022.dbo.DimDate
WHERE CalendarYear >= 2020