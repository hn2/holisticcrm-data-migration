DROP TABLE IF EXISTS z_target.Users;

create table z_target.Users as
SELECT  SystemUserId, 
		FirstName, 
		lastname, 
		-- domainname, 
		MobilePhone, 
		HomePhone, 
		InternalEMailAddress
FROM z_source.systemusers;

select * from z_target.Users;