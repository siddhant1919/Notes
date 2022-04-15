-- USE lco_users;

-- TODO: DISTINCT (to return all the unique rows)

-- SELECT DISTINCT stu_fname AS "First Name",email FROM students;

-- TODO: ORDER BY(used to sort by the given value, you can use ASC or DESC to sort in ascending or descending order)

-- SELECT DISTINCT CONCAT(stu_fname," ",stu_lname) AS 'USERS', login_count, course_count 
-- FROM students 
-- ORDER BY login_count DESC;

-- TODO: LIMIT(to get the limited number of data the first argument is from and second is to)

-- SELECT DISTINCT stu_fname, login_count 
-- FROM students 
-- ORDER BY login_count DESC 
-- LIMIT 2, 5;

-- TODO: LIKE(if you want to search something and know only some part of the value, you can use LIKE and after like keyword use the part you know, if you know that name end with 'esh' write '%esh', if you know that name starts with 'esh' write 'esh%', you can also use '_' is you know the number of letters)

-- SELECT DISTINCT stu_fname, email FROM students WHERE stu_fname LIKE '%esh';
-- SELECT DISTINCT stu_fname, email FROM students WHERE stu_fname LIKE 'm%';
-- SELECT DISTINCT stu_fname, email FROM students WHERE stu_fname LIKE 'm___';

-- TODO: COUNT

-- SELECT COUNT(DISTINCT stu_fname) AS "Count of students" FROM students;

-- TODO: SQL mode

-- SET @@sql_mode='';

-- TODO: GROUP BY(it gives unique rows or the group of given value)

-- SELECT stu_fname, signup_month, COUNT(*) FROM students
-- GROUP BY signup_month;

-- TODO: MIN and MAX and subqueries

-- SELECT stu_fname, email, login_count FROM students 
-- WHERE login_count = (SELECT MAX(login_count) FROM students);

-- TODO: GROUP BY MIN and MAX

-- SELECT MAX(login_count), signup_month FROM students
-- GROUP BY signup_month
-- ORDER BY signup_month;

-- TODO: SUM and AVG

-- SELECT signup_month, login_count FROM students
-- WHERE signup_month = 7;

-- SELECT signup_month, AVG(login_count) FROM students
-- GROUP BY signup_month;

-- SELECT signup_month, SUM(login_count) FROM students
-- GROUP BY signup_month;

-- TODO: AND and OR

-- SELECT CONCAT(stu_fname,' ',stu_lname) AS "User",login_count,course_count FROM students
-- WHERE login_count >=20 AND course_count >= 5
-- ORDER BY login_count;

-- SELECT email, login_count, course_count, signup_month FROM students
-- WHERE signup_month = 7 OR signup_month = 10;

-- TODO: RANGE : BETWEEN - AND

-- SELECT email, login_count, signup_month FROM students
-- WHERE signup_month BETWEEN 7 AND 10
-- ORDER BY signup_month;

-- TODO: CASE

-- SELECT stu_fname, signup_month, 
--   CASE
--       WHEN signup_month BETWEEN 7 AND 10 THEN 'Early Bird'
--       WHEN signup_month BETWEEN 11 AND 12 THEN 'Regular User'
--       ELSE '##'
--   END AS "Category"
-- FROM students
-- ORDER BY signup_month;










