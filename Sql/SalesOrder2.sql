DROP TABLE IF EXISTS z_target.SalesOrders;

/*SELECT cs1_supplierName, ModifiedOnBehalfByName, OpportunityIdName, QuoteIdName, CampaignIdName, ModifiedOnBehalfByYomiName, ModifiedByName, ModifiedByYomiName, TransactionCurrencyIdName, CreatedByYomiName, CreatedByName, PriceLevelIdName, OwnerId, OwnerIdName, OwnerIdYomiName, OwnerIdDsc, OwnerIdType, OwningUser, ContactId, ContactIdName, ContactIdYomiName, SalesOrderId, OpportunityId, QuoteId, PriorityCode, OwningBusinessUnit, PriceLevelId, OrderNumber, Name, PricingErrorCode, TotalAmount, TotalLineItemAmount, TotalLineItemDiscountAmount, TotalAmountLessFreight, TotalDiscountAmount, TotalTax, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn, StateCode, StatusCode, VersionNumber, WillCall, ShipTo_FreightTermsCode, DiscountPercentage, CustomerId, CustomerIdName, CustomerIdType, CampaignId, IsPriceLocked, TransactionCurrencyId, TimeZoneRuleVersionNumber, ExchangeRate, TotalLineItemAmount_Base, TotalDiscountAmount_Base, TotalAmountLessFreight_Base, TotalAmount_Base, TotalLineItemDiscountAmount_Base, TotalTax_Base, CustomerIdYomiName, ModifiedOnBehalfBy, cs1_confirmdate, cs1_date_debt, cs1_interest_type, cs1_source_opp, cs1_discounttype, cs1_supplier, cs1_coursecounter, cs1_canceled, cs1_studying_agreement, cs1_discount, cs1_new_order, cs1_Signed_at_the_branch, cs1_totalamount_order, cs1_totalamount_order_Base, cs1_sec, cs1_Signed_branch_ARB, cs1_makdim
FROM z_source.salesorder;*/

create table z_target.SalesOrders
as SELECT  ModifiedBy as 'ModifiedBy', --	Lookup	Users
		ModifiedByName as 'ModifiedByName', --	Lookup	
		-- cast(ModifiedOn as datetime) as ModifiedOn, --	DateTime	
		Name as 'Subject', --	One Line	
		
		OpportunityId as 'Deal_Name_id', --	Lookup	
		OpportunityIdName as 'Deal_Name', --	Lookup	
		OrderNumber	as 'OrderNumber', --	One Line	
		OwnerId	as 'OwnerId', --	Lookup	
		OwnerIdName as 'OwnerIdName', --	Lookup	
		SalesOrderId as 'SalesOrderId', -- Id	
		
		/*value	State	PickList	
		value	Status	PickList	*/
		
		cast(TotalAmount as DECIMAL) as 'TotalAmount', -- Currency	
		cast(TotalAmount_Base as DECIMAL) as 'TotalAmount_Base', -- Currency	
		cast(TotalAmountLessFreight as DECIMAL) as 'TotalAmountLessFreight', --	Currency	
		cast(TotalAmountLessFreight_Base as DECIMAL) as 'TotalAmountLessFreight_Base', -- Currency	
		cast(TotalDiscountAmount as DECIMAL) as 'TotalDiscountAmount', -- Currency	
		cast(TotalDiscountAmount_Base as DECIMAL) as 'TotalDiscountAmount_Base', --	Currency	
		cast(TotalLineItemAmount as decimal) as	'TotalLineItemAmount', -- Currency	
		cast(TotalLineItemAmount_Base as decimal) as 'TotalLineItemAmount_Base', --	Currency	
		cast(TotalLineItemDiscountAmount as decimal) as	'TotalLineItemDiscountAmount', -- Currency	
		cast(TotalLineItemDiscountAmount_Base as decimal) as 'TotalLineItemDiscountAmount_Base', --	Currency	
		cast(TotalTax as decimal) as 'TotalTax', --	Currency	
		cast(TotalTax_Base as decimal) as 'TotalTax_Base', -- Currency	
		
		cs1_interest_type as 'cs1_interest_type', 
		-- value	Interest	PickList	
		case when cs1_new_order = 0 then 'לא' when cs1_new_order = 1 then 'כן' end as 'cs1_new_order', 
		-- value	FirstOrder	כן/לא -> Boolean	
		-- cs1_sec	as 'cs1_sec', 
		case when cs1_sec = 0 then 'לא' when cs1_sec = 1 then 'כן' end as 'cs1_sec', 
		-- value	SecondOrder	כן/לא -> Boolean	
		-- cs1_Signed_at_the_branch as 'cs1_Signed_at_the_branch',
		case when cs1_Signed_at_the_branch = 0 then 'לא' when cs1_Signed_at_the_branch = 1 then 'כן' end as 'cs1_Signed_at_the_branch', 
		-- value	SignAtBranch	כן/לא -> Boolean	
		-- cs1_source_opp	as 'cs1_source_opp', 
		case when cs1_source_opp = 0 then 'לא' when cs1_source_opp = 1 then 'כן' end as 'cs1_source_opp', 
		-- value	LeadSource	PickList	
		-- cs1_studying_agreement as 'cs1_studying_agreement',
		case when cs1_studying_agreement = 0 then 'לא' when cs1_studying_agreement = 1 then 'כן' end as 'cs1_studying_agreement', 
		-- value	StudyAgreement	חתם/לא חתם -> Boolean	
		cs1_supplier as 'cs1_supplier',
		cs1_supplierName as 'cs1_supplierName',
		CustomerId	as 'Account_Name' --	Lookup	
		-- DateFulfilled as 'ClosingDate' --	Date
		
FROM z_source.salesorder;

SELECT *
FROM z_target.SalesOrders;
