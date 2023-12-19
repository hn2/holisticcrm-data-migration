DROP TABLE IF EXISTS z_target.MetaData;

-- SELECT CreatedByName, CreatedByYomiName, ModifiedByName, ModifiedByYomiName, OrganizationIdName, new_discount_reasonId, CreatedOn, CreatedBy, ModifiedOn, ModifiedBy, OrganizationId, 
-- 	   statecode, statuscode, VersionNumber, ImportSequenceNumber, new_s_name, new_f_discount, cs1_0, cs1_1
-- FROM z_source.new_discount_reason;

create table z_target.MetaData as
SELECT  CreatedByName, 
		CreatedByYomiName, 
		ModifiedByName, 
		ModifiedByYomiName, 
		OrganizationIdName, 
		new_discount_reasonId,
		CreatedOn, 
		CreatedBy, 
		ModifiedOn, 
		ModifiedBy, 
		OrganizationId, 
	   	statecode, 
	   	statuscode, 
	   	VersionNumber, 
	   	ImportSequenceNumber, 
	   	new_s_name, 
	   	new_f_discount, 
	   	cs1_0, cs1_1
FROM z_source.new_discount_reason;


SELECT *
FROM z_target.MetaData;
