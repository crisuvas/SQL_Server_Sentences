CREATE FUNCTION customer_order (@CustomerID nchar(5)) RETURNS table
RETURN (SELECT CompanyName, COUNT(o.CustomerID) AS CustomerOrder FROM Orders AS o JOIN Customers AS c ON o.CustomerID=c.CustomerID WHERE o.CustomerID=@CustomerID GROUP BY CompanyName)