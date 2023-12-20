DROP TABLE IF EXISTS z_target.Branches;

CREATE TABLE z_target.Branches AS
SELECT 	cast(siteid as unsigned) as 'id',
		cast(Name as nchar) as 'Site Name'
FROM z_source.sites;

select * from z_target.Branches;