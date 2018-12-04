CREATE PROCEDURE product_price @ListPrice money
AS
BEGIN
	SELECT Name, pplph.ListPrice FROM Production.Product AS pp 
	JOIN Production.ProductListPriceHistory AS pplph 
	ON pplph.ProductID=pp.ProductID
	WHERE pplph.ListPrice<=@ListPrice
END