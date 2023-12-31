DROP TABLE IF EXISTS z_target.Users;

-- SELECT SystemUserId, FirstName, lastname, domainname, MobilePhone, HomePhone, InternalEMailAddress
-- FROM z_source.systemusers;

CREATE TABLE z_target.Users AS
SELECT  SystemUserId, 
		FirstName, 
		lastname, 
		domainname, 
		MobilePhone, 
		HomePhone, 
		InternalEMailAddress
FROM z_source.systemusers;

select * FROM z_target.Users;