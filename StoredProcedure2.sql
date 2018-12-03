CREATE PROCEDURE insert_update_customer @CustomerID nchar(5), @CompanyName nvarchar(40), @ReturnID nchar(5) OUTPUT
AS
BEGIN
	INSERT INTO Customers (CustomerID, CompanyName) VALUES (@CustomerID, @CompanyName)
	IF(@@ERROR <> 0)
		BEGIN
			UPDATE Customers
			SET CustomerID=@CustomerID,
			CompanyName=@CompanyName
			WHERE CustomerID=@CustomerID
			PRINT('An Update was realized')
		END
	ELSE
	BEGIN
		PRINT('An Insert was realized')
	END
	SELECT @ReturnID=CustomerID FROM Customers WHERE CustomerID=@CustomerID
END