DROP TABLE IF EXISTS z_target.Products;

-- SELECT SubjectIdName, cs1_fine_per_productName, ModifiedByYomiName, ModifiedOnBehalfByYomiName, ModifiedByName, TransactionCurrencyIdName, ModifiedOnBehalfByName, DefaultUoMIdName, CreatedOnBehalfByYomiName, CreatedByYomiName, CreatedOnBehalfByName, OrganizationIdName, CreatedByName, cs1_bookName, DefaultUoMScheduleIdName, PriceLevelIdName, ProductId, DefaultUoMScheduleId, SubjectId, OrganizationId, Name, DefaultUoMId, PriceLevelId, ProductTypeCode, Price, IsKit, ProductNumber, QuantityDecimal, IsStockItem, CreatedOn, ModifiedOn, CreatedBy, StateCode, ModifiedBy, StatusCode, VersionNumber, TransactionCurrencyId, ExchangeRate, UTCConversionTimeZoneCode, ImportSequenceNumber, TimeZoneRuleVersionNumber, Price_Base, CreatedOnBehalfBy, ModifiedOnBehalfBy, cs1_price_book, cs1_price_book_Base, cs1_changedbyconv, cs1_changeddateconv, cs1_createdbyconv, cs1_createddateconv, cs1_pricelevelconv, cs1_fine_per_product, cs1_type, cs1_order, cs1_book
-- FROM z_source.product;

CREATE TABLE z_target.Products AS
SELECT  cs1_fine_per_productName as 'Product Name',
		ProductId as 'id',
		ProductNumber as 'Product_Code',
		cs1_fine_per_product as 'fine',
		cs1_type as 'interest'
FROM z_source.product;

-- DROP TABLE IF EXISTS z_target.Products;
-- CREATE TABLE z_target.Products
--  AS
-- SELECT *
-- FROM z_source.Cs1_fine

SELECT * from z_target.Products;