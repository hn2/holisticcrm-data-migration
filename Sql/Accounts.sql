DROP TABLE IF EXISTS z_target.Accounts;

CREATE TABLE z_target.Accounts AS
SELECT OwnerId AS 'Owner', 
	   OwnerIdName AS 'Owner.Full_Name', 
       AccountId AS 'id',
       Name AS 'Account Name', 
       Telephone1 AS 'Phone' 
       -- DoNotEMail AS 'DonotsendEmail',
       -- case when DoNotEMail = 0 then 'לא' when DoNotEMail = 1 then 'כן' end as 'DoNotEMail'
FROM z_source.account;

SELECT *
FROM z_target.Accounts;