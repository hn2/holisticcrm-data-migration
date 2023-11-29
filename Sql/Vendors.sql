DROP TABLE IF EXISTS z_target.Vendors;

CREATE TABLE z_target.Vendors AS
SELECT  CreatedByName, 
		CreatedByYomiName, 
		CreatedOnBehalfByName, 
		CreatedOnBehalfByYomiName, 
		ModifiedByName, 
		ModifiedByYomiName, 
		ModifiedOnBehalfByName, 
		ModifiedOnBehalfByYomiName, 
		OrganizationIdName, 
		cs1_supplierId, CreatedOn, 
		CreatedBy, 
		ModifiedOn, 
		ModifiedBy, 
		CreatedOnBehalfBy, 
		ModifiedOnBehalfBy, 
		OrganizationId, 
		statecode, statuscode, 
		VersionNumber, 
		cs1_name, 
		cs1_content_system, 
		cs1_supplier_type
FROM z_source.cs1_supplier;