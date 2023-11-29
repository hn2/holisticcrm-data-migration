DROP TABLE IF EXISTS z_target.Users;
CREATE TABLE z_target.Users AS
SELECT *
FROM z_source.systemusers