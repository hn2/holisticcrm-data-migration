DROP TABLE IF EXISTS z_target.Contacts;

-- SELECT TransactionCurrencyIdName, CreatedByYomiName, cs1_siteName, cs1_cityName, OriginatingLeadIdYomiName, ModifiedByName, ModifiedOnBehalfByName, ModifiedOnBehalfByYomiName, OriginatingLeadIdName, CreatedByName, ModifiedByYomiName, 
-- Address1_AddressId, Address1_Line1, Address1_PostalCode, Address2_AddressTypeCode, Address2_AddressId, Address2_FreightTermsCode, Address2_ShippingMethodCode, OwnerId, OwnerIdName, OwnerIdYomiName, OwnerIdDsc, OwnerIdType, OwningUser, 
-- ContactId, CustomerSizeCode, CustomerTypeCode, PreferredContactMethodCode, LeadSourceCode, OriginatingLeadId, OwningBusinessUnit, ShippingMethodCode, ParticipatesInWorkflow, IsBackofficeCustomer, FirstName, LastName, FullName, YomiFullName, 
-- Description, GenderCode, HasChildrenCode, EducationCode, EMailAddress1, DoNotPhone, DoNotFax, DoNotEMail, DoNotPostalMail, DoNotBulkEMail, DoNotBulkPostalMail, TerritoryCode, IsPrivate, CreatedOn, CreditOnHold, CreatedBy, ModifiedOn, ModifiedBy, 
-- VersionNumber, MobilePhone, Telephone1, StateCode, StatusCode, PreferredAppointmentTimeCode, DoNotSendMM, Merged, TransactionCurrencyId, ExchangeRate, TimeZoneRuleVersionNumber, ModifiedOnBehalfBy, IsAutoCreate, cs1_addition_to_grade, 
-- cs1_addition_to_grade_extra, cs1_addition_to_target_grade_english_a, cs1_addittion_to_target_grade, cs1_avg, cs1_bonus, cs1_bonus_english_a, cs1_bonus_extra, cs1_bonus_mathematics_a, cs1_cell, cs1_courses_counter, cs1_debt_balance_f, 
-- cs1_debt_balance_f_Base, cs1_deposits, cs1_deposits_Base, cs1_english, cs1_english_grade, cs1_Expression, cs1_ezrahot, cs1_grade, cs1_grade_extra, cs1_hebrew_b, cs1_hebrew_havaa, cs1_hebrew_language, cs1_hebrew_literature, cs1_hestory_b, 
-- cs1_hestory_nation, cs1_history_a, cs1_id, cs1_improved_avg, cs1_internal_number, cs1_learning_unit, cs1_learning_unit_extra, cs1_mathematics, cs1_mathematics_grade, cs1_modify_date, cs1_name_comments, cs1_prefix1, cs1_proffession, 
-- cs1_proffession_extra, cs1_psychometric_grade, cs1_psychometric_math, cs1_tanach, cs1_target_bonus_extra, cs1_target_grade, cs1_target_grade_english, cs1_target_grade_extra, cs1_target_grade_mathematics, cs1_target_grade_mathematics_a, 
-- cs1_target_unit_english, cs1_target_unit_ezrahot, cs1_target_unit_hebrew, cs1_target_unit_hebrew_b, cs1_target_unit_hebrew_havaa, cs1_target_unit_hebrew_literature, cs1_target_unit_history_a, cs1_target_unit_history_b, 
-- cs1_target_unit_history_nation, cs1_target_unit_mathematics_a, cs1_target_unit_tanach, cs1_telephone1, cs1_telephone2, cs1_total_actual_payment, cs1_total_actual_payment_Base, cs1_total_order, cs1_total_order_Base, cs1_total_payment, 
-- cs1_total_payment_Base, cs1_site, cs1_city, cs1_mobile, cs1_mobile_phone, cs1_prefix_mobile, cs1_Profession1, cs1_Profession10, cs1_Profession11, cs1_Profession2, cs1_Profession3, cs1_Profession4, cs1_Profession5, cs1_Profession6, 
-- cs1_Profession7, cs1_Profession8, cs1_Profession9, cs1_profession12, cs1_balance_update, cs1_dopsychometricexaminyg, cs1_hasnt_learn_8_years, cs1_high_school_student, cs1_learning_disability, cs1_noemail, cs1_preparatory_studies, 
-- cs1_registration_limit, cs1_setreqfields, cs1_test_version, cs1_physics, cs1_physics_grade, cs1_target_unit_physics, cs1_target_grade_physics, cs1_manualcalc, cs1_Adjusted_test, cs1_birthday, cs1_byheart_test, cs1_Dictionary, 
-- cs1_English_playback_Psychometric, cs1_Extra_Time, cs1_Formulas_page, cs1_Interval_of_5minutes_Psychometric, cs1_Psychometric_test_with_a_computer, cs1_questionnaire_Reading, cs1_Transcription, cs1_Using_a_calculator, cs1_sendemail, 
-- cs1_creatednow, cs1_Ignore_spelling_errors, cs1_MA_israel, cs1_MA_outofisrael, cs1_Teacher, cs1_MyGeva, cs1_d_payment, cs1_d_payment_Base, cs1_check_box_geva, cs1_dyscalculia, cs1_reforma, cs1_bohen_nitrali, cs1_english_name, 
-- cs1_card_num_for_malon, cs1_did_return_card_malom
-- FROM z_source.contact;

-- SELECT FirstName, LastName, EMailAddress1, cs1_internal_number, cs1_name_comments, cs1_id, cs1_site, cs1_siteName, GenderCode, Telephone1, cs1_prefix1, MobilePhone, cs1_cell, cs1_mobile, cs1_prefix_mobile, 
-- 	   BirthDate, Address1_Line1, cs1_city, cs1_cityName, Address1_PostalCode, cs1_tanach, cs1_tanach_grade, cs1_bonus_tanach, cs1_hebrew_language, cs1_hebrew_language_grade, cs1_bonus_hebrew, cs1_hebrew_b, cs1_hebrew_b_grade, cs1_bonus_hebrew_b, 
-- 	   cs1_hebrew_havaa, cs1_hebrew_havaa_grade, cs1_bonus_hebrew_havaa, cs1_hebrew_literature, cs1_hebrew_literature_grade, cs1_bonus_hebrew_literature, cs1_english, cs1_english_grade, cs1_bonus_english_a, cs1_mathematics, cs1_mathematics_grade, 
-- 	   cs1_history_a, cs1_history_a_grade, cs1_bonus_history_a, cs1_hestory_b, cs1_hestory_b_grade, cs1_bonus_hestory_b, cs1_hestory_nation, cs1_hestory_nation_grade, cs1_bonus_hestory_nation, cs1_ezrahot, cs1_ezrahot_grade, cs1_bonus_ezrahot, 
-- 	   cs1_physics, cs1_physics_grade, cs1_bonus_physics, cs1_target_unit_tanach, cs1_target_grade_tanach, cs1_addition_to_target_grade_tanach, 
-- 	   cs1_target_unit_hebrew, cs1_target_grade_hebrew, cs1_addition_to_target_grade_hebrew_b, cs1_target_unit_hebrew_b, cs1_target_grade_hebrew_b, cs1_addition_to_target_grade_hebrew, cs1_target_unit_hebrew_havaa, 
-- 	   cs1_target_grade_hebrew_havaa, cs1_addition_to_target_grade_hebrew_havaa, cs1_target_unit_hebrew_literature, cs1_target_grade_hebrew_literature, cs1_addition_to_target_grade_hebrew_literatur, 
-- 	   cs1_target_unit_english, cs1_target_grade_english, cs1_addition_to_target_grade_english_a, cs1_target_unit_mathematics_a, cs1_target_grade_mathematics, cs1_target_grade_mathematics_a, 
-- 	   cs1_target_unit_history_a, cs1_target_grade_history_a, cs1_addition_to_target_grade_history_a, cs1_target_unit_history_b, cs1_target_grade_hestory_b, cs1_addition_to_target_grade_hestory_b, 
-- 	   cs1_target_unit_history_nation, cs1_target_grade_hestory_nation, cs1_addition_to_target_grade_hestory_nation, cs1_target_unit_ezrahot, cs1_target_grade_ezrahot, cs1_addition_to_target_grade_ezrahot, 
-- 	   cs1_target_unit_physics, cs1_target_grade_physics, cs1_bonus_target_physics, cs1_academic_institution_firstdegree, cs1_academic_institution_firstdegreeName, cs1_faculty_firstdegree, cs1_faculty_firstdegreeName, 
-- 	   cs1_circle_firstdegree, cs1_circle_firstdegreeName, cs1_Ba_year1, cs1_masterdegree, cs1_Extent_of_work, cs1_MA_institution, cs1_MA_institutionName, cs1_academic_sec_degree_start, cs1_academic_fav_abroad_institution, cs1_app_serves_to_round
-- FROM z_source.contact;

-- SELECT contactid, birthday
-- FROM z_source.contact_birthday;

update z_source.contact c
set c.GenderCode = null 
where c.GenderCode like '%נתניה%' or c.GenderCode like '%כפר סבא%';

-- select c.GenderCode
-- from z_source.contact c
-- where c.GenderCode like '%נתניה%';

CREATE TABLE z_target.Contacts AS
select  c.FirstName as 'FirstName',	-- String	
		c.LastName as	'LastName',	-- String	
		c.EMailAddress1 as 'Email',	-- String	
		c.cs1_internal_number as 'ContactNumber',		
		c.cs1_name_comments as 'Title',
		c.cs1_id as 'identityNumber',	
		c.cs1_site as	'Branch',	-- Lookup	Branches
		-- Value as 'Gender',		
		-- GenderCode as 'Gender',
	/*
		case 
			when c.GenderCode = 1 then 'זכר'
			when c.GenderCode = 2 then 'נקבה'	
			else 'אחר'
		end as 'Gender',
	*/
		-- c.cs1_telephone1 as 'Phone',		
		c.Telephone1 as 'Phone',		
		-- c.cs1_mobile_phone	as 'Mobile',	
		c.MobilePhone	as 'Mobile',	
-- 		cast(cs1_prefix1  as nchar) + cast(Telephone1  as nchar) as 'Phone',		
-- 		cast(cs1_prefix_mobile as nchar) + cast(MobilePhone as nchar)	as 'Mobile',			
		-- c.cs1_mobile as 'Other Mobile',		
-- 		c.cs1_birthday as 'Date of Birth',	
		
		-- cb.birthday as 'Date of Birth',			
		
		c.Address1_Line1 as 'Street',		
		c.cs1_city as 'City',	-- Lookup	Cities
		c.Address1_PostalCode	as 'ZipCode',	-- String	
		
		c.cs1_target_unit_tanach	as 'TanachUnits',	--	Integer	
		c.cs1_tanach_grade as 'tanachGrade',	--	Integer	
		
		c.cs1_hebrew_language	as 'HebrewUnits',	--	Integer	
		c.cs1_hebrew_language_grade as 'HebrewGrade',	--	Integer	
		
		c.cs1_english	as 'EnglishUnits',	--	Integer	
		-- cs1_target_unit_english as 'EnglishUnits2',	--	Integer	
		c.cs1_english_grade as 'EnglishGrade',	--	Integer	
		
		c.cs1_mathematics as 'MathUnits',	--	Integer	
		c.cs1_mathematics_grade as 'MathGrade',	--	Integer	
		
		c.cs1_history_a as 'HistoryUnits',	--	Integer	
		c.cs1_history_a_grade as 'HistoryGrade',	--	Integer	
		
		c.cs1_physics	as 'PhysicsUnits',	--	Integer	
		c.cs1_physics_grade as 'PhysicsGrade',	--	Integer	
		c.cs1_academic_institution_firstdegreeName as 'AcademicInsition',	-- String	
		c.cs1_faculty_firstdegreeName	as 'WantToLearn',	--	String	
		c.cs1_Ba_year1 as 'WhenWantToLearn'	--	Number	
		
FROM z_source.contact c;
-- left join z_source.contact_birthday cb
-- on c.ContactId = cb.contactid;

select * from z_target.Contacts;