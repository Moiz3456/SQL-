SHOW Databases;
USE pets;
CREATE TABLE cats
(
 id 			INT unsigned NOT NULL AUTO_INCREMENT,	 # Unique ID for the record
 name 			VARCHAR(150) NOT NULL,				 	# Name of the cat
 owner 			VARCHAR(150) NOT NULL, 					# Owner of the cat
 birth 			DATE NOT NULL, 							# Birthday of the cat
 PRIMARY KEY	(id) 									# Make the id the primary key
);
SHOW TABLES;
DESCRIBE cats;
INSERT INTO cats(name,owner,birth) VALUES
	('sandy','lennon','2015-3-2'),
    ('cookie','lemon','2011-34-4'),
    ('leader','sauce','2012-4-3');
SELECT * FROM cats;
SELECT name from cats where owner='lemon';
DELETE FROM cats WHERE name='leader';
select * from cats;
ALTER table cats add gender char(1) after name;
describe cats;
select * from cats;
alter table cats drop gender;
describe cats;

