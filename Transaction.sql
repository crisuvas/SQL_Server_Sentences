BEGIN TRANSACTION
	UPDATE Customers SET PostalCode= '93432' WHERE CustomerID = 'ABABA';
	INSERT INTO Customers (CustomerID, CompanyName) VALUES ('zAset', 'Manzana');
	IF @@ERROR <> 0
		BEGIN 
			ROLLBACK
			PRINT('Error')
		END
	ELSE
		BEGIN
			COMMIT
			PRINT('All fine')
		END