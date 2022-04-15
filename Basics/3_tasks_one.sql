-- USE lco_users;
-- SELECT * FROM students;

-- TODO: CONCAT

-- SELECT stu_fname,stu_lname FROM students;
-- SELECT CONCAT(stu_fname,' ',stu_lname) AS FULL_NAME FROM students;

-- SELECT CONCAT(stu_fname,' ',stu_lname,' and login count is ',login_count) 
-- AS "FULL NAME AND LOGIN COUNT" 
-- FROM students;

-- SELECT CONCAT(stu_fname,"'s ",'lOGIN COUNT IS ',login_count,' AND COURSE COUNT IS ',course_count) 
-- AS "LOGIN AND COURSE COUNT" 
-- FROM students;

-- TODO: REPLACE

-- SELECT REPLACE(stu_fname,'a','@') AS REPLACED FROM students;

-- TODO: SUBSTRING

-- SELECT CONCAT(SUBSTRING(email,1,7),"....") AS TRUNCATED FROM students;

-- TODO: REVERSE

-- SELECT REVERSE(stu_fname) AS REVERSED FROM students;

-- TODO: LENGTH OF STRING

-- SELECT email, CHAR_LENGTH(email) AS "Length"  FROM students;

-- TODO: UPPER AND LOWER CASE

-- SELECT UPPER(stu_fname) AS "Upper Name", LOWER(stu_lname) AS "lower case" FROM students;






