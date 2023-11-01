SELECT 
	ProductKey,
	ProductAlternateKey AS ProductItemCode,
	EnglishProductName AS ProductName,
	EnglishProductCategoryName AS ProductCategory,
	EnglishProductSubcategoryName AS ProductSubcategory,
	Color AS ProductColor,
	Size AS ProductSize,
	ProductLine AS ProductModelName,
	EnglishDescription AS ProductDescription,
	ISNULL(Status, 'Outdated') AS ProductStatus
FROM AdventureWorksDW2022.dbo.DimProduct as pro
	LEFT JOIN AdventureWorksDW2022.dbo.DimProductCategory AS procat ON procat.ProductCategoryKey = pro.ProductSubcategoryKey
	LEFT JOIN AdventureWorksDW2022.dbo.DimProductSubcategory AS prosubcat ON prosubcat.ProductSubcategoryKey = pro.ProductSubcategoryKey
ORDER BY ProductKey ASC
