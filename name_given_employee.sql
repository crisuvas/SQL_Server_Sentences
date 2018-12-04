CREATE PROCEDURE name_given_employee @FirstName nvarchar(50), @MiddleName nvarchar(50),
									@LastName nvarchar(50)
AS
BEGIN
	SELECT FirstName, MiddleName, LastName, JobTitle, hrd.Name
	FROM Person.Person AS pp JOIN  HumanResources.Employee AS hre 
	ON pp.BusinessEntityID=hre.BusinessEntityID 
	JOIN HumanResources.EmployeeDepartmentHistory AS hedh 
	ON hre.BusinessEntityID=hedh.BusinessEntityID
	JOIN HumanResources.Department  AS hrd
	ON hedh.DepartmentID=hrd.DepartmentID 
	WHERE FirstName=@FirstName and MiddleName=@MiddleName and LastName=@LastName
	IF(@@ERROR <> 0)
		BEGIN
			SELECT 'An error was succed' AS error
		END
	ELSE
		BEGIN
			PRINT('Everything is fine')
		END
END