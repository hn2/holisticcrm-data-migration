DROP TABLE IF EXISTS z_target.new_discount_history;

-- SELECT CreatedBy, CreatedByName, CreatedOn, cs1_contact, cs1_contactName, ModifiedBy, ModifiedByName, ModifiedOn, new_approve_manager_id, new_approve_manager_idName, new_discount_historyId, 
-- 	   new_discount_reason_id, new_discount_reason_idName, new_f_discount_percent, new_f_discount_sum, new_s_description, new_s_name, new_schedule_id, new_schedule_idName, OrganizationId, OrganizationIdName, 
-- 	   statecode, statecode_value, statuscode, statuscode_value
-- FROM z_source.new_discount_history;

create table z_target.new_discount_history as
SELECT CreatedBy, 
		CreatedByName, 
		CreatedOn, 
		cs1_contact, 
		cs1_contactName, 
		ModifiedBy, 
		ModifiedByName,
		ModifiedOn, 
		new_approve_manager_id, 
		new_approve_manager_idName, 
		new_discount_historyId, 
	   new_discount_reason_id, 
	   new_discount_reason_idName, 
	   new_f_discount_percent, 
	   new_f_discount_sum, 
	   new_s_description, 
	   new_s_name, 
	   new_schedule_id, 
	   new_schedule_idName, 
	   OrganizationId, 
	   OrganizationIdName, 
	   statecode, 
	   statecode_value, 
	   statuscode, 
	   statuscode_value
FROM z_source.new_discount_history;


SELECT *
FROM z_target.new_discount_history;
