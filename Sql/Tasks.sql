DROP TABLE IF EXISTS z_target.Tasks;

CREATE TABLE z_target.Tasks AS
SELECT CreatedByName, 
		cs1_teacherName, 
		TransactionCurrencyIdName, 
		ModifiedByYomiName, 
		ModifiedOnBehalfByName, 
		ModifiedByName, 
		ModifiedOnBehalfByYomiName, 
		CreatedOnBehalfByYomiName, 
		cs1_client_numberYomiName, 
		CreatedOnBehalfByName, 
		CreatedByYomiName, 
		cs1_client_numberName, 
		OwnerId, 
		OwnerIdName, 
		OwnerIdYomiName, 
		OwnerIdDsc, 
		OwnerIdType, 
		OwningUser, 
		OwningTeam, Subject, 
		ActualEnd, 
		ScheduledStart, 
		RegardingObjectId, 
		ScheduledDurationMinutes, 
		ActualStart, StateCode, 
		ActivityId, Category, 
		CreatedOn, 
		OwningBusinessUnit, 
		IsWorkflowCreated, 
		CreatedBy, 
		ModifiedBy, 
		Subcategory, 
		ScheduledEnd, 
		Description, 
		PercentComplete, 
		SubscriptionId, 
		PriorityCode, 
		VersionNumber, 
		ServiceId, 
		ActualDurationMinutes, 
		ModifiedOn, 
		case
			when StatusCode = 2 then 'לא החל'
			when StatusCode = 3 then 'מתבצע'
			when StatusCode = 4 then 'ממתין למישהו אחר'
			when StatusCode - 7 then 'נדחה'
			else null
		end as StatusCode,
		IsBilled, 
		RegardingObjectIdName, 
		RegardingObjectTypeCode, 
		ImportSequenceNumber, 
		TimeZoneRuleVersionNumber, 
		UTCConversionTimeZoneCode, 
		OverriddenCreatedOn, 
		RegardingObjectIdYomiName, 
		CreatedOnBehalfBy, 
		ModifiedOnBehalfBy, 
		case
			when ActivityTypeCode = '4204' then 'פקס'
			when ActivityTypeCode = '4210' then 'שיחת טלפון'
			when ActivityTypeCode = '4202' then 'פגישה'
			when ActivityTypeCode = '4214' then 'פגישת יעוץ'
			when ActivityTypeCode = '4212' then 'משימה'
			when ActivityTypeCode = '10018' then 'שליחת SMS'
		end ActivityTypeCode,
		IsRegularActivity, 
		TransactionCurrencyId, 
		ExchangeRate, 
		cs1_changedbyconv, 
		cs1_changeddateconv, 
		cs1_convid, 
		cs1_createdbyconv, 
		cs1_createddateconv, 
		cs1_convowner, 
		cs1_convstatecode, 
		cs1_convstatus, 
		cs1_client_number, 
		cs1_Registered, 
		cs1_callback, 
		case
			when cs1_statushamtana = '861650000' then 'חדש'
			when cs1_statushamtana = '01' then 'בטיפול'
			when cs1_statushamtana = '02' then 'הועבר לאישור מנהל'
			when cs1_statushamtana = '03' then 'טופל'
			else null
		end as cs1_statushamtana,
		cs1_friend, 
		cs1_teacher, 
		cs1_mateim_lekors
FROM z_source.task;

select * FROM z_target.Tasks;

