DROP TABLE IF EXISTS z_target.Vendors;

-- SELECT CreatedBy, CreatedByName, cs1_name, cs1_supplierId, cs1_supplier_type, ModifiedBy, ModifiedByName, ModifiedOn, statecode, statecode_value, statuscode, statuscode_value
-- FROM z_source.cs1_supplier;

CREATE TABLE z_target.Vendors AS
SELECT  CreatedBy, 
		CreatedByName, 
		cs1_name, 
		cs1_supplierId, 
		cs1_supplier_type, 
		ModifiedBy, 
		ModifiedByName, 
		ModifiedOn, 
		statecode, 
		statecode_value, 
		statuscode, 
		statuscode_value
FROM z_source.cs1_supplier;

SELECT * FROM z_target.Vendors;