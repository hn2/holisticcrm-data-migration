DROP TABLE IF EXISTS z_target.price_list;

SELECT pricelevelid, Name, exchangerate, freighttermscode, freighttermscode_Value, organizationid, OrganizationIdName, paymentmethodcode, paymentmethodcode_Value1, paymentmethodcode_Value2, 
	   StateCode, StateCode_Value, ImportSequenceNumber, TimeZoneRuleVersionNumber, TransactionCurrencyId, TransactionCurrencyIdName, UTCConversionTimeZoneCode, VersionNumber
FROM z_source.productpricelevel;

CREATE TABLE z_target.price_list as
SELECT pricelevelid, 
	   Name, 
	   exchangerate, 
	   freighttermscode, 
	   freighttermscode_Value, 
	   organizationid, 
	   OrganizationIdName, 
	   paymentmethodcode, 
	   paymentmethodcode_Value1, 
	   paymentmethodcode_Value2, 
	   StateCode, 
	   StateCode_Value, 
	   ImportSequenceNumber, 
	   TimeZoneRuleVersionNumber, 
	   TransactionCurrencyId, 
	   TransactionCurrencyIdName, 
	   UTCConversionTimeZoneCode, 
	   VersionNumber
FROM z_source.productpricelevel;


SELECT *
FROM z_target.price_list
