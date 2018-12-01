/* Inline Function*/
CREATE FUNCTION CountryCustomers (@Country nvarchar(15)) RETURNS table
RETURN (SELECT CustomerID, CompanyName, Country FROM Customers WHERE Country=@Country)
