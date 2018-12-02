CREATE FUNCTION the_best_ship_country() RETURNS table
RETURN (SELECT TOP 1 ShipCountry, COUNT(OrderID) AS TotalOrders FROM Orders GROUP BY ShipCountry ORDER BY TotalOrders Desc)