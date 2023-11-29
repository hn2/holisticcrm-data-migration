select 
ModifiedBy,
ModifiedByName,
ModifiedOn,
Name,
OpportunityId,
OpportunityIdName,
OrderNumber,
OwnerId,
OwnerIdName,
SalesOrderId,
value,
value1,
TotalAmount,
TotalAmount_Base,
TotalAmountLessFreight,
TotalAmountLessFreight_Base,
TotalDiscountAmount,
TotalDiscountAmount_Base,
TotalLineItemAmount,
TotalLineItemAmount_Base,
TotalLineItemDiscountAmount,
TotalLineItemDiscountAmount_Base,
TotalTax,
TotalTax_Base,
value2,
case when value3 = 'כן' then 'TRUE' WHEN value3 = 'לא' then 'FALSE' else 'FALSE' end,
case when value4 = 'כן' then 'TRUE' WHEN value4 = 'לא' then 'FALSE' else 'FALSE' end,
case when value5 = 'כן' then 'TRUE' WHEN value5 = 'לא' then 'FALSE' else 'FALSE' end,
value6,
case when value5 = 'חתם' then 'TRUE' WHEN value5 = 'לא חתם' then 'FALSE' else 'FALSE' end,
CustomerId,
DateFulfilled
from z_source.salesorder
