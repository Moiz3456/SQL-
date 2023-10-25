SELECT * FROM teachers;

SELECT last_name, first_name, salary FROM teachers;

SELECT school FROM teachers;

SELECT DISTINCT school
FROM teachers;

SELECT DISTINCT school, salary
FROM teachers;


SELECT first_name, last_name, salary
FROM teachers
ORDER BY salary DESC;

SELECT DISTINCT salary,first_name
FROM teachers;


SELECT last_name, school, hire_date
FROM teachers
ORDER BY school ASC, hire_date DESC;


SELECT last_name, school, hire_date
FROM teachers
WHERE school = 'Myers Middle School';


SELECT first_name, last_name, school
FROM teachers
WHERE first_name = 'Janet';


SELECT school
FROM teachers
WHERE school != 'F.D. Roosevelt HS';

SELECT first_name, last_name, hire_date
FROM teachers
WHERE hire_date < '2000-01-01';


SELECT first_name, last_name, salary
FROM teachers
WHERE salary >= 43500;


SELECT first_name, last_name, school, salary
FROM teachers
WHERE salary BETWEEN 40000 AND 65000;

SELECT first_name
FROM teachers
WHERE first_name LIKE 'sam%';

SELECT first_name
FROM teachers
WHERE first_name ILIKE 'sam%';

SELECT *
FROM teachers
WHERE school = 'F.D. Roosevelt HS'
AND (salary < 38000 OR salary > 40000);


SELECT first_name, last_name, school, hire_date, salary
FROM teachers
WHERE school LIKE '%Roos%'
ORDER BY hire_date DESC;

SELECT count(*),school
FROM teachers
group by school

SELECT first_name,salary
FROM teachers
WHERE first_name like 'S%' AND salary >40000;


--Understanding Data Types
CREATE TABLE char_data_types (
	varchar_column varchar(10),
	char_column char(10),
	text_column text
	);

INSERT INTO char_data_types
VALUES('abc', 'abc', 'abc'),
	('defghi', 'defghi', 'defghi');
	
COPY char_data_types TO 'C:\Users\Moizuddin\Downloads\typetest.csv'
WITH (FORMAT CSV, HEADER, DELIMITER '|');

COPY (SELECT * FROM char_data_types) TO 'C:\Users\Moizuddin\Downloads\typetest.txt';

COPY (SELECT * FROM public.char_data_types) TO 'C:\Users\Moizuddin\Downloads\typetest.txt';

select current_user;

GRANT USAGE ON SCHEMA public TO postgres;

COPY (SELECT * FROM public.char_data_types) TO 'C:\Users\Moizuddin\Downloads\typetest.txt';


--creating a table to check the time stamp and time zone details
CREATE TABLE date_time_types (
	timestamp_column timestamp with time zone,
	interval_column interval
	);


INSERT INTO date_time_types
VALUES ('2018-12-31 01:00 EST','2 days'),
	('2018-12-31 01:00 -8','1 month'),
	('2018-12-31 01:00 Australia/Melbourne','1 century'),
	(now(),'1 week');


SELECT * FROM date_time_types;

SELECT timestamp_column,interval_column, timestamp_column - interval_column AS new_date
FROM date_time_types;


--casting a column
SELECT timestamp_column, CAST(timestamp_column AS varchar(10))
FROM date_time_types;



COPY currencies
FROM '"D:\Datasets\SQL Datasets\countries\countries\currencies.csv"'
WITH (FORMAT CSV, HEADER);
