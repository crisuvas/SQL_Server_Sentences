BEGIN TRANSACTION
	INSERT INTO HumanResources.Employee(BusinessEntityID, NationalIDNumber, LoginID, 
	JobTitle, BirthDate, MaritalStatus, Gender,HireDate, SalariedFlag, VacationHours, 
	SickLeaveHours, CurrentFlag, rowguid, ModifiedDate) VALUES (
	293, 'HEHEHE', 'hello word', 'Superman', '1980-12-12', 'S','M', '2010-12-13', 1, 20,3,1, '4A9A8407-A680-4A6B-8D03-511CB58F9A8B', '2010-12-12')
	IF (@@Error <> 0)
		BEGIN
			ROLLBACK
			PRINT('Error')
		END
	ELSE
		BEGIN
			PRINT('all is right')
		END