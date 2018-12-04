CREATE PROCEDURE insert_product_production  @Name nvarchar(50), @ProductNumber nvarchar(25),
					@MakeFlag bit, @FinishedGoodsFlag bit, @SafetyStockLevel smallint, @ReorderPoint smallint,
					@StandardCost money, @ListPrice money, @DaysToManufacture int, @SellStartDate datetime,
					@rowguid uniqueidentifier, @ModifiedDate datetime, @message nvarchar(30) OUTPUT
AS
BEGIN
	BEGIN TRANSACTION
		INSERT INTO Production.Product( Name, ProductNumber,
					MakeFlag, FinishedGoodsFlag, SafetyStockLevel, ReorderPoint,
					StandardCost, ListPrice, DaysToManufacture, SellStartDate,
					rowguid, ModifiedDate) VALUES (
					 @Name, @ProductNumber,
					@MakeFlag, @FinishedGoodsFlag, @SafetyStockLevel, @ReorderPoint,
					@StandardCost, @ListPrice, @DaysToManufacture, @SellStartDate,
					@rowguid, @ModifiedDate);
	IF @@ERROR <>0
		BEGIN
			ROLLBACK
			SET @message = 'The INSERT was not made'
		END
	ELSE
		BEGIN
			COMMIT
			SET @message = 'The INSERT was made'
		END
END