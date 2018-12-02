CREATE FUNCTION sum_unit_price_order_details(@OrderID int) RETURNS table
RETURN (SELECT OrderID, (UnitPrice * Quantity) AS Cost FROM [Order Details] WHERE OrderID=@OrderID)