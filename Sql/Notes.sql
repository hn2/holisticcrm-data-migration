DROP TABLE IF EXISTS z_target.Accounts;

CREATE TABLE z_target.Accounts AS
SELECT  OwnerId	 as 'Owner', --	Lookup	Users
		OwnerIdName	as 'Owner.Full_Name', -- Lookup	Users
		AnnotationId as 'id', -- key	
		ObjectId as 'Parent_id', --	Lookup	
		Subject	as 'subject', -- text	
		NoteText as	'content', -- text	
		CreatedOn as 'Created_time', --	Date/time	
		ModifiedOn as 'Modified_time' -- Date/time	
FROM z_source.annotation

SELECT *
FROM z_source.account