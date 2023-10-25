--Having a look at postgresql databases
SElECT table_name,table_schema
FROM information_schema.tables;

--columns of certain table
SELECT column_name,data_type
FROM information_schema.columns
WHERE table_name='cities';

SELECT * 
FROM cities
LIMIT 3;

SELECT COUNT(*)
FROM cities;

SELECT COUNT(DISTINCT name)
FROM cities;

CREATE TABLE weather(
	clouds text,
	temperature numeric,
	weather_station char(5)
);


--Rename a column
ALTER TABLE countries
RENAME column code TO codes;


--Drop Column
ALTER TABLE weather
DROP column weather_station;

--checking the data types of all the columns of weather table
SELECT data_type,column_name
FROM information_schema.columns
WHERE table_name='weather';

ALTER TABLE weather
ADD column wind_speed text;

--Dealing with data types
SELECT temperature*wind_speed
FROM weather;

SELECT temperature*CAST(wind_speed as integer) AS wind_chill
FROM weather;

CREATE TABLE students (
	ssn integer,  
	name varchar(64),  
	dob date,  
	average_grade numeric(3, 2), -- e.g. 5.54 
	tuition_paid boolean);
	
--ALTER data_type
ALTER TABLE students
ALTER column name
TYPE varchar(150);

SELECT data_type,column_name
FROM information_schema.columns
WHERE table_name='cities';


ALTER TABLE students
ALTER column ssn
SET not null;

ALTER TABLE students
ALTER column ssn
DROP not null;


SELECT * FROM students;


INSERT INTO students(ssn,name,dob,average_grade,tuition_paid)
VALUES('1999','King King','08-08-1999','3.5','True')


-- Convert the values in firstname to a max. of 16 characters
ALTER TABLE students
ALTER COLUMN name
TYPE varchar(16)
USING SUBSTRING (name FROM 1 FOR 16)