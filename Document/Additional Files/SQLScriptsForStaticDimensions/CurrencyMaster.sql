SE Starbucks_Offers_DW;
DECLARE @MinDate DATE = '2019-01-02';
DECLARE @MaxDate DATE = '2099-12-31';
WHILE @MinDate < @MaxDate
BEGIN
	DECLARE @USDLKR money = 0.00
	DECLARE @LKRUSD money = 0.00

	INSERT INTO DimCurrency (SourceCurrencyType,DestinationCurrencyType,ExchangeRate,ExchangeDate, InsertDate,ModifiedDate)
	VALUES('USD','LKR', @USDLKR,DATEADD(day, 1, @MinDate), GETDATE(), GETDATE())
	
	INSERT INTO DimCurrency (SourceCurrencyType,DestinationCurrencyType,ExchangeRate,ExchangeDate, InsertDate,ModifiedDate)
	VALUES('LKR','USD', @LKRUSD,DATEADD(day, 1, @MinDate), GETDATE(), GETDATE())
	
	SET @MinDate = DATEADD(day, 1, @MinDate)
END;
SELECT * FROM DimCurrency;