CREATE FUNCTION customers_served (@EmployeeID int) RETURNS table
RETURN (SELECT CustomerID FROM Orders WHERE EmployeeID=@EmployeeID GROUP BY CustomerID)
