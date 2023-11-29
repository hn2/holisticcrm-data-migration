DROP TABLE IF EXISTS z_target.Cities1;

-- CREATE TABLE z_target.Cities1 AS
-- SELECT cs1_townId AS 'City_id',
-- 	   cs1_name AS 'City_Name'
-- FROM z_source.cs1_town;

CREATE TABLE z_target.Cities1 AS
SELECT 	cs1_townid, 
		-- UUID() AS 'City_id',
	   	cs1_name AS 'City_Name'
FROM z_source.cs1_town;

SELECT *
FROM z_target.Cities1;