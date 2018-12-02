CREATE FUNCTION cost_order (@OrderId int) RETURNS table
RETURN (SELECT OrderID, Freight FROM Orders WHERE OrderID=@OrderId)