DROP TABLE IF EXISTS z_target.CustomModule5;

-- SELECT CreatedByName, CreatedByYomiName, CreatedOnBehalfByName, CreatedOnBehalfByYomiName, ModifiedByName, ModifiedByYomiName, ModifiedOnBehalfByName, ModifiedOnBehalfByYomiName,
-- 	   cs1_siteName, OrganizationIdName, cs1_teacherId, CreatedOn, CreatedBy, ModifiedOn, ModifiedBy, CreatedOnBehalfBy, ModifiedOnBehalfBy, OrganizationId, statecode, statuscode, 
-- 	   VersionNumber, ImportSequenceNumber, TimeZoneRuleVersionNumber, UTCConversionTimeZoneCode, cs1_name, cs1_emailaddress, cs1_id, cs1_mobile, cs1_site, cs1_changedbyconv, 
-- 	   cs1_changeddateconv, cs1_createdbyconv, cs1_createddateconv, cs1_firstname, cs1_lastname, cs1_teacher_id, cs1_Teaching_profession1, cs1_Teaching_profession2, cs1_mobile_phone
-- FROM z_source.cs1_teacher;

CREATE TABLE z_target.CustomModule5 AS
SELECT  cast(cs1_emailaddress as nchar) as	Email, -- Email
		cast(cs1_firstname as nchar) as FirstName, -- String
		cs1_id as id, -- key
		cast(cs1_lastname as nchar) as	Last_Name, -- String
		cs1_mobile as Mobile, -- phone
		cast(cs1_mobile_phone as nchar) as	phone, -- phone
		-- cs1_name	-	
		cast(cs1_teacherId as nchar) as identity -- string
		-- cs1_teacher_id	?	
FROM z_source.cs1_teacher;

select * from z_target.CustomModule5;
-- DROP TABLE IF EXISTS z_target.CustomModule5;
-- CREATE TABLE z_target.CustomModule5 AS
-- SELECT *
-- FROM z_source.cs1_watchingteacher