DROP TABLE IF EXISTS z_target.Allocations;

CREATE TABLE z_target.Allocations AS
-- SELECT CreatedByName, CreatedByYomiName, CreatedOnBehalfByName, CreatedOnBehalfByYomiName, ModifiedByName, ModifiedByYomiName, ModifiedOnBehalfByName, ModifiedOnBehalfByYomiName, cs1_new_discount3_approving_manageridYomiName, cs1_teacherpreferenceName, cs1_managerapproval_actiononstartedcourseYomiName, cs1_exception_approvalYomiName, cs1_new_discount2_approving_manageridYomiName, cs1_cenceld_orgcoursetypeName, cs1_updating_userYomiName, cs1_prev_schedulingName, cs1_studentnameName, cs1_new_discount_resonName, cs1_className, cs1_courseaName, cs1_managerapproval_conditionslistYomiName, cs1_exception_approvalName, cs1_actName, cs1_opportunityName, cs1_managerapproval_classpriorityName, cs1_new_discount3_approving_manageridName, cs1_studentnameYomiName, cs1_new_discount3_resonName, cs1_new_discount1_approving_manageridName, cs1_managerapproval_conditionslistName, cs1_teacher_nameName, cs1_new_discount2_resonName, cs1_managerapproval_fullclassName, cs1_new_discount2_approving_manageridName, cs1_owner_updateYomiName, cs1_act_reasonName, TransactionCurrencyIdName, cs1_course_typeName, cs1_updating_userName, cs1_new_discount1_approving_manageridYomiName, cs1_yearName, cs1_managerapproval_actiononstartedcourseName, cs1_pricelevelName, OrganizationIdName, cs1_owner_updateName, cs1_managerapproval_fullclassYomiName, cs1_orderName, cs1_managerapproval_classpriorityYomiName, cs1_student_course_schedulingId, CreatedOn, CreatedBy, ModifiedOn, ModifiedBy, CreatedOnBehalfBy, ModifiedOnBehalfBy, OrganizationId, statecode, statuscode, VersionNumber, TimeZoneRuleVersionNumber, UTCConversionTimeZoneCode, cs1_name, cs1_action_update_date, cs1_approval_description, cs1_class_details, cs1_condition, cs1_course_back_eligibility, cs1_course_code, cs1_course_price, TransactionCurrencyId, ExchangeRate, cs1_course_price_Base, cs1_course_registry_date, cs1_entitle_books, cs1_fine_value, cs1_fine_value_Base, cs1_friendpriority, cs1_learningagrement, cs1_paydate, cs1_start_date, cs1_studentstatus, cs1_class, cs1_studentname, cs1_order, cs1_owner_update, cs1_exception_approval, cs1_teacher_name, cs1_teacherpreference, cs1_course_type, cs1_Initiated, cs1_mobilephone, cs1_tryout_result, cs1_coursea, cs1_act, cs1_act_reason, cs1_year, cs1_backtocollection, cs1_draft, cs1_end_date, cs1_paid, cs1_paid_Base, cs1_Registration_result, cs1_prev_scheduling, cs1_opportunity, cs1_course_discount, cs1_courses_quantity, cs1_finelevel, cs1_manual_disc_shekel, cs1_manual_discount, cs1_manual_discount_Base, cs1_population_type, cs1_remains, cs1_remains_Base, cs1_debtpaid, cs1_Knowateacher, cs1_reasonapproval_actiononstartedcourse, cs1_reasonapproval_classpriority, cs1_reasonapproval_conditionslist, cs1_reasonapproval_fullclass, cs1_managerapproval_actiononstartedcourse, cs1_managerapproval_classpriority, cs1_managerapproval_conditionslist, cs1_managerapproval_fullclass, cs1_cenceled_orgprice, cs1_cenceled_orgprice_Base, cs1_cenceld_orgcoursetype, cs1_graduation_date, cs1_original_paydate, cs1_paydate_update_date, cs1_rejection_counter, cs1_second_paydate, cs1_updating_user, cs1_learningagreement_Preparatory, cs1_testresult1, cs1_testresult2, cs1_create_new_scehduling_with_rejection, cs1_pricelevel, cs1_simulation_c_book, cs1_simulation_b_book, cs1_quiz_book, cs1_simulation_d_book, cs1_cs1_hebrew_dictionary1, cs1_answers_sheet, cs1_geomtry_book, cs1_completion, cs1_english_marathon_book, cs1_simulation_e_book, cs1_problems_book, cs1_algebra_book1, cs1_simulation_a_book, cs1_class_marathon_book, cs1_graph_book, cs1_stoper, cs1_english_dictionary, cs1_quantative_marathon_book, cs1_entrance_exam, cs1_english_book, cs1_logic_book, cs1_course_book, cs1_verbal_marathon_book, cs1_mid_term_book, cs1_words_book, cs1_words_exercise_book, cs1_kartesiut, cs1_optional_review_book, cs1_dictionariesreturned, cs1_returnedbooks, cs1_lomda, cs1_preparing_Teacher_comments, cs1_missing_lessons_new, cs1_reculc, cs1_1, cs1_2, cs1_3, cs1_4, cs1_44, cs1_5, cs1_6, cs1_7, cs1_8, cs1_1111, cs1_22, cs1_hashlama, cs1_9, cs1_10, cs1_11, cs1_12, cs1_13, cs1_14, cs1_15, cs1_16, cs1_17, cs1_18, cs1_19, cs1_20, cs1_21, cs1_23, cs1_class22, cs1_pre_class, cs1_not_sure, cs1_summarizing_test, new_entitlement_note, new_entitlement, cs1_112, cs1_call, cs1_gmat_book, cs1_gmat_all_books, cs1_new_discount_reson, cs1_new_discount2_reson, cs1_new_discount3_reson, cs1_new_discount1_approving_managerid, cs1_new_discount2_approving_managerid, cs1_new_discount3_approving_managerid, cs1_hacanabook, cs1_before_mecina_math_4, cs1_mechina_math_4, cs1_hazara_math_4, cs1_hazara_math_5, cs1_mechina_math_5, cs1_hacana_english_4, cs1_hacana_english_5, cs1_hacana_fisica, cs1_want_mechina, cs1_converstion_b_course, cs1_english_session, cs1_status_bakara, cs1_prep_booklet_math4, cs1_prep_booklet_math5, cs1_payment_via_club_credit, cs1_precourse_test_kamoti, cs1_precourse_test_miloli, cs1_precourse_test_english, cs1_open_reg_fullcapacity, cs1_reform_student, cs1_study_area, cs1_send_books, cs1_collected_books, cs1_Hybrid, cs1_Hybrid1, cs1_Green, cs1_date_select, cs1_date_green, cs1_test
-- FROM z_source.cs1_student_course_scheduling;
select  cs1_studentname	as 'Contact_Name', -- Lookup	Contacts
		case
			when cs1_studentstatus = '861650000' then 'נרשם'
			when cs1_studentstatus = '861650001' then 'לומד'
			when cs1_studentstatus = '861650002' then 'סיים'
			else null
		end as 'Status', 		
		cs1_class as 'Class_Name', --	Lookup	Courses
		-- cast(coalesce(case when cs1_course_price = 'NULL' then null else cs1_course_price end, 0) as decimal) as 'Amount', -- Currency	
		cast(coalesce(cs1_course_price, 0) as decimal) as 'Amount', -- Currency	
		-- cs1_course_back_eligibility	?		
		case when cs1_paid = 'NULL' then null else cs1_paid end as 'Paid', -- Currency	
		-- cast(cs1_debtpaid as decimal) as 'Debt', -- Currency	
		-- cast(cs1_new_end_date as Date)	as 'Custom_EndDate', -- Date	
		-- cast(cs1_course_registry_date as Date)	as 'Reg_Date', -- Date	
		cs1_coursea	 as 'Course_Name', --	Lookup	Courses
		-- cast(cs1_paydate as Date) as 'Pay_Date', --	Date	
-- 	    case 
-- 	    	when cs1_learningagreement_Preparatory = 0 then 'False'
--  			when cs1_learningagreement_Preparatory = 1 then 'True'
-- 	    end as 'StudyAgreement', -- Boolean		
		cast(cs1_knowateacher as nchar) as 'askTeacher', 	
		-- cast(cs1_missing_lessons_new as unsigned) as 'NumOfMiss', -- integer	
		cs1_missing_lessons_new as 'NumOfMiss', -- integer	
		-- cast(cs1_start_date as DATETIME) as 'Start_date',
		-- cast(cs1_end_date as DATETIME) as 'End_Date',
		cs1_opportunity as 'Deal_Name', -- Lookup	Deals
		cast(cs1_new_discount_resonName as nchar) as 'Discount_Reason',	
		cast(cs1_new_discount2_resonName as nchar) as 'Discount_Reason2',	
		cast(cs1_study_area as nchar) as 'interest', -- String	
		case
			when cs1_hybrid = '861650000' then 'כן'
			when cs1_hybrid = '861650002' then 'לא'
			when cs1_hybrid = '861650001' then 'בטיפול'
			else null			
		end as 'hybrid' --	Boolean	True/ False
from z_source.cs1_student_course_scheduling;

select * from z_target.Allocations;

-- select distinct cs1_missing_lessons_new
-- from z_source.cs1_student_course_scheduling;

-- SELECT cs1_studentname, cs1_studentnamename, cs1_studentstatus, cs1_studentstatus_value, cs1_class, cs1_className, cs1_course_price, cs1_fine_value, cs1_course_back_eligibility, cs1_course_back_eligibility_value, new_entitlement_note, cs1_friendpriority, cs1_teacher_name, cs1_teacher_nameName, transactioncurrencyid, TransactionCurrencyIdName, cs1_registration_result, cs1_registration_result_value, cs1_backtocollection, coalesce(cs1_paid, 0), cs1_debtpaid, cs1_debtpaid_value, cs1_finelevel, ModifiedBy, ModifiedByName, cs1_new_end_date, cs1_course_registry_date, cs1_coursea, cs1_courseaName, cs1_course_code, cs1_course_type, cs1_course_typeName, cs1_class_details, cs1_paydate, cs1_learningagrement, cs1_learningagrement_value, cs1_learningagreement_preparatory, cs1_learningagreement_preparatory_value, cs1_teacherpreference, cs1_teacherpreferenceName, cs1_knowateacher, cs1_missing_lessons_new, cs1_exception_approval, cs1_exception_approvalName, cs1_start_date, cs1_end_date, cs1_order, cs1_orderName, cs1_opportunity, cs1_opportunityName, cs1_call, cs1_call_value, cs1_open_campus, cs1_close_campus, cs1_new_discount1_approving_managerid, cs1_new_discount2_approving_managerid, cs1_new_discount2_approving_manageridName, cs1_new_discount3_approving_managerid, cs1_new_discount3_approving_manageridName, cs1_new_discount_reson, cs1_new_discount_resonName, cs1_new_discount2_reson, cs1_new_discount2_resonName, cs1_managerapproval_actiononstartedcourse, cs1_managerapproval_actiononstartedcourseName, cs1_approval_description, cs1_reasonapproval_actiononstartedcourse, cs1_managerapproval_conditionslist, cs1_managerapproval_conditionslistName, cs1_managerapproval_fullclass, cs1_managerapproval_fullclassName, cs1_study_area, cs1_reasonapproval_conditionslist, cs1_reasonapproval_fullclass, cs1_act, cs1_actName, cs1_action_update_date, cs1_act_value, cs1_cenceled_orgprice, cs1_act_reason, cs1_act_reasonName, cs1_owner_update, cs1_owner_updateName, cs1_prev_scheduling, cs1_prev_schedulingName, cs1_cenceld_orgcoursetype, cs1_cenceld_orgcoursetypeName, cs1_tryout_result, cs1_tryout_result_value, cs1_testresult1, cs1_testresult1_value, cs1_preparing_teacher_comments, cs1_havetodo_mechinatest, cs1_havetodo_mechinatest_value, cs1_condition, cs1_condition_value, cs1_exas_result, cs1_exas_result_value, cs1_testresult2, cs1_testresult2_value, cs1_draft, cs1_draft_value, cs1_want_mechina, cs1_want_mechina_value, cs1_converstion_b_course, cs1_original_paydate, cs1_rejection_counter, cs1_updating_user, cs1_updating_userName, cs1_second_paydate, cs1_paydate_update_date, cs1_hybrid, cs1_hybrid_value, cs1_collected_books, cs1_collected_books_value, cs1_send_books, cs1_send_books_value, cs1_date_book, cs1_return_books, cs1_return_books_value, cs1_entitle_books, cs1_entitle_books_value, statecode, statecode_value, statuscode, statuscode_value, Column127, Column128, Column129, Column130, Column131, Column132, Column126, Column122, Column123, Column124, Column125, Column121
-- FROM z_source.cs1_student_course_scheduling
-- where cs1_paid is null

-- select cs1_course_price, cs1_paid
-- from z_source.cs1_student_course_scheduling;
-- 
-- select coalesce(cs1_course_price, 0), coalesce(case when cs1_paid = 'NULL' then null else cs1_paid end, 0)
-- from z_source.cs1_student_course_scheduling