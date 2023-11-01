SELECT
	CustomerKey,
	FirstName,
	LastName,
	CONCAT(FirstName,' ',LastName) AS FullName,
	CASE Gender WHEN 'M' THEN 'Male' WHEN 'F' THEN 'Female' END AS Gender,
	DateFirstPurchase,
	City AS CustomerCity
FROM AdventureWorksDW2022.dbo.DimCustomer AS cus
	LEFT JOIN AdventureWorksDW2022.dbo.DimGeography AS geo ON geo.GeographyKey = cus.GeographyKey
ORDER BY CustomerKey ASC