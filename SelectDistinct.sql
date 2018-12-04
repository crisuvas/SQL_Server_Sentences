SELECT DISTINCT od.ProductID, ProductName FROM [Order Details] AS od
JOIN Orders AS o ON od.OrderID=o.OrderID
JOIN Products AS p ON od.ProductID=p.ProductID
WHERE OrderDate >= '1996-07-04'
AND OrderDate <= '1996-07-05'
ORDER BY od.ProductID;