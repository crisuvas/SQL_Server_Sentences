/* Multilinear Function */
CREATE FUNCTION sum_sells (@EmpID int)
RETURNS @TableSum table(EmployeeID int, OrderID int)
BEGIN
	INSERT INTO @TableSum
	SELECT EmployeeID, COUNT(OrderID) FROM Orders 
	WHERE EmployeeID = @EmpID GROUP BY EmployeeID
	RETURN 
END

/*Call Function*/
SELECT * FROM dbo.sum_sells(3);