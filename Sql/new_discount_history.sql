DROP TABLE IF EXISTS z_target.new_discount_history;

SELECT CreatedByName, CreatedByYomiName, CreatedOnBehalfByName, CreatedOnBehalfByYomiName, ModifiedByName, ModifiedByYomiName, ModifiedOnBehalfByName, ModifiedOnBehalfByYomiName, 
	   cs1_contactYomiName, OrganizationIdName, new_discount_reason_idName, new_approve_manager_idYomiName, new_schedule_idName, new_approve_manager_idName, cs1_contactName, 
	   new_discount_historyId, CreatedOn, CreatedBy, ModifiedOn, ModifiedBy, CreatedOnBehalfBy, ModifiedOnBehalfBy, OrganizationId, statecode, statuscode, VersionNumber, new_s_name, 
	   new_f_discount_percent, new_f_discount_sum, new_s_description, new_schedule_id, new_discount_reason_id, new_approve_manager_id, cs1_contact
FROM z_source.new_discount_history;

create table z_target.new_discount_history as
SELECT  CreatedByName, 
		CreatedByYomiName, 
		CreatedOnBehalfByName, 
		CreatedOnBehalfByYomiName, 
		ModifiedByName, 
		ModifiedByYomiName, 
		ModifiedOnBehalfByName, 
		ModifiedOnBehalfByYomiName, 
	    cs1_contactYomiName, 
	    OrganizationIdName,
	    new_discount_reason_idName, 
	    new_approve_manager_idYomiName,
	    new_schedule_idName, 
	    new_approve_manager_idName, 
	    cs1_contactName, 
	    new_discount_historyId, 
	    CreatedOn, 
	    CreatedBy,
	    ModifiedOn,
	    ModifiedBy,
	    CreatedOnBehalfBy,
	    ModifiedOnBehalfBy,
	    OrganizationId, 
	    statecode, 
	    statuscode, 
	    VersionNumber, 
	    new_s_name, 
	    new_f_discount_percent, 
	    new_f_discount_sum, 
	    new_s_description,
	    new_schedule_id,
	    new_discount_reason_id,
	    new_approve_manager_id,
	    cs1_contact
FROM z_source.new_discount_history;


SELECT *
FROM z_target.new_discount_history;
