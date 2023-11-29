DROP TABLE IF EXISTS z_target.Leads;

CREATE TABLE z_target.Leads AS
SELECT cs1_contact1Name AS 'ContactName',
cs1_moedName AS 'moed',
cs1_supplierName AS 'Lead_Source',
OwnerId AS 'Owner', -- lookup tp systemusers
-- LeadId AS 'id',
uuid() AS 'id',
SalesStageCode AS 'Status',
Description AS 'Description',
FirstName AS 'FisrtName',
LastName AS 'LastName',
EMailAddress1 AS 'Email',
DoNotEMail AS 'DontSendEmail',
Telephone1 AS 'Phone',
MobilePhone AS 'Mobile',
ConfirmInterest AS 'Interest'
FROM z_source.lead;

SELECT *
FROM z_target.Leads;

-- SELECT * 
-- from z_target.Leads  
-- -- INTO OUTFILE 'E:/Users/hanna/Documents/עבודה/HolisticCRM/Target/Leads.csv'  
-- -- INTO OUTFILE 'E:\Users/hanna\Documents\עבודה\HolisticCRM\Target\Leads.csv'  
-- INTO OUTFILE 'Leads.csv'   
-- CHARACTER SET utf8
-- FIELDS TERMINATED BY ','    
-- OPTIONALLY ENCLOSED BY '"'    
-- LINES TERMINATED BY '\r\n';    