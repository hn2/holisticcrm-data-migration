SET group_concat_max_len = 4096;

DROP TABLE IF EXISTS z_target.Teachers;

CREATE TABLE z_target.Teachers AS
select  cast(cl.cs1_name as nchar) as 'Name',
		cast(cl.cs1_class_code as nchar) as 'Class Code',
		cast(cl.cs1_max_num as unsigned) as 'max_student',
		cast(cl.cs1_register_students as unsigned) as 'register_student',
		cl.cs1_siteName as 'branch',  -- lookup
		-- cs1_course_type as 'type', -- picklist
		(select group_concat(distinct(cl2.cs1_course_type) separator ';') from z_source.cs1_class as cl2) as 'type', -- picklist
		cl.cs1_teacherName as 'teacher', -- lookup
		cast(cl.cs1_start_date as date) as	'start_data',
		cast(cl.cs1_end_date as date) as 'end_date',
		cast(cl.cs1_registered_students_from_yesterday as unsigned) as 'register_student_yesterday',
		-- cs1_priority as 'priority', --	picklist
		(select group_concat(distinct(cl2.cs1_priority) separator ';') from z_source.cs1_class as cl2) as 'priority', -- picklist
		cs1_day1 as 'Days[0]', --	list
		-- (select group_concat(distinct(cl2.cs1_day1) separator ';') from z_source.cs1_class as cl2) as 'Days[0]', -- picklist
		cs1_day2 as 'Days[1]', --	list
		-- (select group_concat(distinct(cl2.cs1_day2) separator ';') from z_source.cs1_class as cl2) as 'Days[1]', -- picklist
		-- cs1_yearName as 'year_name' --	picklist
		(select group_concat(distinct(cl2.cs1_yearName) separator ';') from z_source.cs1_class as cl2) as 'year_name', -- picklist
		
		cc.cs1_site	as 'branch_id', -- lookup
		cc.cs1_product as 'product_id', -- lookup
		-- cs1_yearName as 'Year',
		(select group_concat(distinct(cc2.cs1_yearName) separator ';') from z_source.cs1_coursea as cc2) as 'Year', -- picklist
		cc.cs1_courseaId as 'id',
		-- cs1_status as 'status',
		(select group_concat(distinct(cc2.cs1_status) separator ';') from z_source.cs1_coursea as cc2) as 'status', -- picklist
		cast(cc.cs1_name as nchar)  as 'Course Name',
		cast(cc.cs1_code as nchar) as 'Course Code',
		cast(cc.cs1_startdate as date) as 'start_date_2',
		cast(cc.cs1_enddate as date) as 'end_date_2'
from z_source.cs1_class cl
join z_source.cs1_coursea cc
on cl.cs1_coursea = cc.cs1_courseaid;

SELECT *
FROM z_target.Teachers
