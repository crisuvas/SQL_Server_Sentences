/*Scalar Function*/
CREATE FUNCTION CalculoIVA(@Price money) RETURNS money
AS
BEGIN
	DECLARE @IVA money
	SET @IVA = @Price * 1.16
	RETURN @IVA
End