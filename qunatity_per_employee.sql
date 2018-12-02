CREATE FUNCTION quantity_per_employee ()
RETURNS @TableQuantity table (LastName nvarchar(20), FirstName nvarchar(10), OrdersDetails int, TotalPrice money)  
BEGIN 
	INSERT INTO @TableQuantity
	SELECT LastName, FirstName, Count(o.EmployeeID) AS OrdersDetails, SUM(UnitPrice * Quantity) AS TotalPrice FROM [Order Details] AS od JOIN Orders AS o ON od.OrderID=o.OrderID JOIN Employees AS e ON o.EmployeeID=e.EmployeeID  GROUP BY o.EmployeeID, e.LastName, e.FirstName ORDER BY o.EmployeeID
Return
END
