SELECT DISTINCT od.ProductID, p.ProductName FROM [Order Details] AS od
JOIN Products AS p ON od.ProductID=p.ProductID
WHERE 'USA' IN (SELECT Country FROM Suppliers AS s
				WHERE p.SupplierID=s.SupplierID)
AND ProductName LIKE'L%';
