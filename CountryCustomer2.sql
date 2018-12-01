/* Multi-line-function*/
CREATE FUNCTION CountryCustomers2 (@Country nvarchar(15))
RETURNS @TableCountry table(CustomerID nvarchar(5), CompanyName nvarchar(40),
							ContactName nvarchar(30), Country nvarchar(15))
BEGIN
	INSERT INTO @TableCountry
	SELECT CustomerID, CompanyName, ContactName, Country FROM Customers
	WHERE Country = @Country
	RETURN 
END