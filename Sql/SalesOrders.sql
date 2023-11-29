cs1_sec
DROP TABLE IF EXISTS z_target.SalesOrders;

-- SELECT cs1_supplierName, ModifiedOnBehalfByName, OpportunityIdName, QuoteIdName, CampaignIdName, ModifiedOnBehalfByYomiName, ModifiedByName, ModifiedByYomiName, TransactionCurrencyIdName, CreatedByYomiName, CreatedByName, PriceLevelIdName, OwnerId, OwnerIdName, OwnerIdYomiName, OwnerIdDsc, OwnerIdType, OwningUser, ContactId, ContactIdName, ContactIdYomiName, SalesOrderId, OpportunityId, QuoteId, PriorityCode, OwningBusinessUnit, PriceLevelId, OrderNumber, Name, PricingErrorCode, TotalAmount, TotalLineItemAmount, TotalLineItemDiscountAmount, TotalAmountLessFreight, TotalDiscountAmount, TotalTax, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn, StateCode, StatusCode, VersionNumber, WillCall, ShipTo_FreightTermsCode, DiscountPercentage, CustomerId, CustomerIdName, CustomerIdType, CampaignId, IsPriceLocked, TransactionCurrencyId, TimeZoneRuleVersionNumber, ExchangeRate, TotalLineItemAmount_Base, TotalDiscountAmount_Base, TotalAmountLessFreight_Base, TotalAmount_Base, TotalLineItemDiscountAmount_Base, TotalTax_Base, CustomerIdYomiName, ModifiedOnBehalfBy, cs1_confirmdate, cs1_date_debt, cs1_interest_type, cs1_source_opp, cs1_discounttype, cs1_supplier, cs1_coursecounter, cs1_canceled, cs1_studying_agreement, cs1_discount, cs1_new_order, cs1_Signed_at_the_branch, cs1_totalamount_order, cs1_totalamount_order_Base, cs1_sec, cs1_Signed_branch_ARB, cs1_makdim
-- FROM z_source.salesorder;

-- CREATE TABLE z_target.SalesOrders AS
-- SELECT  ModifiedBy	ModifiedBy	Lookup	Users
--		ModifiedByName	ModifiedByName	Lookup	
--		ModifiedOn	ModifiedOn	DateTime	
--		Name	Subject	One Line	
--		new_discount1_reason		One Line	
--		new_discount1_reasonName		One Line	
--		new_discount2_reason		One Line	
--		new_discount2_reasonName		One Line	
--		new_discount3_reason		One Line	
--		new_discount3_reasonName		One Line	
--		OpportunityId	Deal_Name_id	Lookup	
--		OpportunityIdName	Deal_Name	Lookup	
--		OrderNumber	OrderNumber	One Line	
--		OwnerId	OwnerId	Lookup	
--		OwnerIdName	OwnerIdName	Lookup	
--		SalesOrderId	SalesOrderId	Id	
--		value	State	PickList	
--		value	Status	PickList	
--		TotalAmount	TotalAmount	Currency	
--		TotalAmount_Base	TotalAmount_Base	Currency	
--		TotalAmountLessFreight	TotalAmountLessFreight	Currency	
--		TotalAmountLessFreight_Base	TotalAmountLessFreight_Base	Currency	
--		TotalDiscountAmount	TotalDiscountAmount	Currency	
--		TotalDiscountAmount_Base	TotalDiscountAmount_Base	Currency	
--		TotalLineItemAmount	TotalLineItemAmount	Currency	
--		TotalLineItemAmount_Base	TotalLineItemAmount_Base	Currency	
--		TotalLineItemDiscountAmount	TotalLineItemDiscountAmount	Currency	
--		TotalLineItemDiscountAmount_Base	TotalLineItemDiscountAmount_Base	Currency	
--		TotalTax	TotalTax	Currency	
--		TotalTax_Base	TotalTax_Base	Currency	
--		value	Interest	PickList	
--		value	FirstOrder	כן/לא -> Boolean	
--		cs1_sec	---		
--		value	SecondOrder	כן/לא -> Boolean	
--		cs1_Signed_at_the_branch	---		
--		value	SignAtBranch	כן/לא -> Boolean	
--		cs1_source_opp	---		
--		value	LeadSource	PickList	
--		cs1_studying_agreement	---		
--		value	StudyAgreement	חתם/לא חתם -> Boolean	
--		CustomerId	Account_Name	Lookup	
--		DateFulfilled	ClosingDate	Date	
			
			
select  ModifiedBy	as 'ModifiedBy', --	Lookup	Users
		ModifiedByName as 'ModifiedByName', -- Lookup	
		-- cast(ModifiedOn	as datetime) as 'ModifiedOn', -- DateTime	
		-- Name as 'Subject', -- One Line	
		
		-- new_discount1_reason, -- One Line	
		-- new_discount1_reasonName, -- One Line	
		-- new_discount2_reason, -- One Line	
		-- new_discount2_reasonName, -- One Line	
		-- new_discount3_reason, -- One Line	
		-- new_discount3_reasonName, -- One Line	

		OpportunityId as 'Deal_Name_id', --	Lookup	
		OpportunityIdName as 'Deal_Name', -- Lookup	
		OrderNumber	as 'OrderNumber', -- One Line	
		OwnerId	as 'OwnerId', -- Lookup	
		OwnerIdName	as 'OwnerIdName', -- Lookup	
		SalesOrderId as 'SalesOrderId',	Id	
		
		-- value	State	PickList	
		-- value	Status	PickList	
		
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
		value	Interest	PickList	
		value	FirstOrder	כן/לא -> Boolean	
		value	SecondOrder	כן/לא -> Boolean	
		value	SignAtBranch	כן/לא -> Boolean	
		value	LeadSource	PickList	
		value	StudyAgreement	חתם/לא חתם -> Boolean	
		CustomerId as 'Account_Name', --	Lookup	
		cast(DateFulfilled as date) as 'ClosingDate' --	Date	
from z_source.salesorder

-- SELECT cs1_supplierName, ModifiedOnBehalfByName, OpportunityIdName, QuoteIdName, CampaignIdName, ModifiedOnBehalfByYomiName, ModifiedByName, ModifiedByYomiName, TransactionCurrencyIdName, CreatedByYomiName, CreatedByName, PriceLevelIdName, OwnerId, OwnerIdName, OwnerIdYomiName, OwnerIdDsc, OwnerIdType, OwningUser, ContactId, ContactIdName, ContactIdYomiName, SalesOrderId, OpportunityId, QuoteId, PriorityCode, OwningBusinessUnit, PriceLevelId, OrderNumber, Name, PricingErrorCode, TotalAmount, TotalLineItemAmount, TotalLineItemDiscountAmount, TotalAmountLessFreight, TotalDiscountAmount, TotalTax, CreatedBy, CreatedOn, ModifiedBy, ModifiedOn, StateCode, StatusCode, VersionNumber, WillCall, ShipTo_FreightTermsCode, DiscountPercentage, CustomerId, CustomerIdName, CustomerIdType, CampaignId, IsPriceLocked, TransactionCurrencyId, TimeZoneRuleVersionNumber, ExchangeRate, TotalLineItemAmount_Base, TotalDiscountAmount_Base, TotalAmountLessFreight_Base, TotalAmount_Base, TotalLineItemDiscountAmount_Base, TotalTax_Base, CustomerIdYomiName, ModifiedOnBehalfBy, cs1_confirmdate, cs1_date_debt, cs1_interest_type, cs1_source_opp, cs1_discounttype, cs1_supplier, cs1_coursecounter, cs1_canceled, cs1_studying_agreement, cs1_discount, cs1_new_order, cs1_Signed_at_the_branch, cs1_totalamount_order, cs1_totalamount_order_Base, cs1_sec, cs1_Signed_branch_ARB, cs1_makdim
-- FROM z_source.salesorder;

select *
from z_target.SalesOrders;
