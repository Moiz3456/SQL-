select now()
from dual;
show character set;
CREATE TABLE person
 (person_id SMALLINT UNSIGNED,
 fname VARCHAR(20),
 lname VARCHAR(20),
 gender CHAR(1),
 birth_date DATE,
 street VARCHAR(30),
 city VARCHAR(20),
 state VARCHAR(20),
 country VARCHAR(20),
 postal_code VARCHAR(20),
 CONSTRAINT pk_person PRIMARY KEY (person_id)
 );
 select * from person;
 Desc person;
 
 CREATE TABLE favorite_food
 (person_id SMALLINT UNSIGNED,
	food VARCHAR(20),
 CONSTRAINT pk_favorite_food PRIMARY KEY (person_id, food),
  CONSTRAINT fk_fav_food_person_id FOREIGN KEY (person_id)
 REFERENCES person (person_id)
  );

desc favorite_food;
desc person;
ALTER TABLE person MODIFY person_id SMALLINT UNSIGNED AUTO_INCREMENT;
desc person;

INSERT INTO person
(person_id, fname, lname, gender, birth_date)
VALUES (1, 'William','Turner', 'M', '1972-05-27');

SELECT person_id, fname, lname, birth_date
FROM person
WHERE lname = 'Turner';

INSERT INTO favorite_food (person_id, food)
VALUES (1, 'pizza');

 INSERT INTO favorite_food (person_id, food)
  VALUES (2, 'cookies');

INSERT INTO favorite_food (person_id, food)
VALUES (3, 'nachos');

select * from favorite_food
where person_id=1
order by food desc;

INSERT INTO person
(person_id, fname, lname, gender, birth_date,
street, city, state, country, postal_code)
VALUES (2, 'Susan','Smith', 'F', '1975-11-02',
'23 Maple St.', 'Arlington', 'VA', 'USA', '20220');

SELECT person_id, fname, lname, birth_date
FROM person;

UPDATE person
 SET street = '1225 Tremont St.',
 city = 'Boston',
state = 'MA',
country = 'USA',
postal_code = '02138'
WHERE person_id = 1;

select * from person;

DELETE FROM person
WHERE person_id = 2;

UPDATE person
SET birth_date = '1975-11-03'
WHERE person_id = 1;

select * from person;

INSERT INTO favorite_food (person_id, food)
VALUES (999, 'lasagna');


UPDATE person
SET birth_date = str_to_date('DEC-21-1980' , '%b-%d-%Y')
WHERE person_id = 1;

Show tables;

Desc customer;

select customer_id, first_name, last_name
from customer 
Where last_name='smith';

select customer_id,"ACTIVE",customer_id*3.1475926,upper(last_name) 
from customer;

select version();
select user(),database();

select customer_id,"ACTIVE",customer_id*3.1475926,
upper(last_name) last_name_upper
from customer;

select customer_id,"ACTIVE",
upper(last_name) as LAST_NAME_UPPER
from customer;

select customer_id
from customer;

select first_name,customer_id
from customer
where first_name='Jennifer';

select customer_id
from customer;

select distinct customer_id
from customer;

CREATE VIEW employee_vw AS
SELECT customer_id,first_name,last_name
 FROM customer;
 
 select customer_id,first_name
 from employee_vw;
 
 SELECT customer.customer_id,customer.first_name,customer.last_name,
 actor.first_name actor_name
  FROM customer inner join actor
  ON customer.customer_id=actor.actor_id;
  
  
  SELECT customer_id,first_name,last_name,store_id
  FROM customer
  WHERE store_id=1;
  
  select count(*)
  from customer;
  
  select count(*)
  from actor;
  
  select count(*)
  from payment;
  
	


