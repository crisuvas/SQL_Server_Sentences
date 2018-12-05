IF OBJECT_ID('CustomersCopy') IS NOT NULL
BEGIN
	DROP TABLE CustomersCopy
END

SELECT CustomerID, CompanyName
INTO CustomersCopy
FROM Customers;

SELECT * FROM CustomersCopy;
