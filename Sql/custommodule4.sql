DROP TABLE IF EXISTS z_target.custommodule4;

-- SELECT cs1_site, cs1_siteName, cs1_product, cs1_productName, cs1_year, cs1_yearName, cs1_number_of_classes, cs1_courseaId, statecode, statecode_Value, 
-- 	   statuscode, statuscode_Value, cs1_status, cs1_status_value, cs1_name, cs1_code, CreatedOn, cs1_startdate, cs1_enddate
-- FROM z_source.cs1_coursea;

CREATE TABLE z_target.custommodule4 as
select  cs1_site as branch_id, --	lookup
		-- cs1_siteName		
		cs1_product	as product_id, --	lookup
		-- cs1_productName		
		-- cs1_year		
		cs1_yearName as	year, --	picklist
		-- cs1_number_of_classes		
		cs1_courseaId as	id, --	lookup
		-- statecode
		-- statecode_Value	 as state, --	picklist
		-- statuscode
		statecode_Value	 as status, --	picklist
		cast(cs1_name as  nchar)	'Course Name', --	text
		cast(cs1_code as  nchar) 'Course Code', --	text
		-- CreatedOn		
		cast(cs1_startdate  as Date) start_date, --	date
		cast(cs1_enddate as Date) end_date --	date
FROM z_source.cs1_coursea;

SELECT *
FROM z_target.custommodule4
