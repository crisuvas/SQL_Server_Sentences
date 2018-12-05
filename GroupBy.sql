SELECT RegionDescription, CategoryName, SUM(od.UnitPrice * od.Quantity) AS total
FROM Region AS r, Territories AS t, EmployeeTerritories AS et, Employees AS e, Orders AS o,
[Order DetailS] AS od, Products AS p, Categories AS c
WHERE r.RegionID=t.RegionID AND t.TerritoryID=et.TerritoryID
AND et.EmployeeID=e.EmployeeID AND e.EmployeeID=o.EmployeeID
AND o.OrderID=od.OrderID AND od.ProductID=p.ProductID AND p.CategoryID=c.CategoryID
GROUP BY RegionDescription, CategoryName ORDER BY RegionDescription;
