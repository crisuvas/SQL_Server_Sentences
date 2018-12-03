CREATE PROCEDURE employee_deparment
AS
	SELECT FirstName, MiddleName, LastName, JobTitle, hedh.DepartmentID, hrd.Name
	FROM Person.Person AS pp JOIN  HumanResources.Employee AS hre 
	ON pp.BusinessEntityID=hre.BusinessEntityID 
	JOIN HumanResources.EmployeeDepartmentHistory AS hedh 
	ON hre.BusinessEntityID=hedh.BusinessEntityID
	JOIN HumanResources.Department  AS hrd
	ON hedh.DepartmentID=hrd.DepartmentID
	ORDER BY DepartmentID;
GO