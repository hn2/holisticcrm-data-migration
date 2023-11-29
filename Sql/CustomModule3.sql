DROP TABLE IF EXISTS z_target.Allocations;

CREATE TABLE z_target.Allocations AS
SELECT *
FROM z_source.cs1_student_course_scheduling