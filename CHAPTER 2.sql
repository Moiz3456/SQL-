CREATE TABLE currencies(
	curr_id	smallint,
	code varchar(5),
	basic_unit varchar(100),
	curr_code varchar(5),
	frac_unit varchar(20),
	frac_perbasic smallint
);

select * from currencies;

COPY currencies
FROM 'D:\Datasets\SQL Datasets\countries\countries\currencies.csv'
WITH (FORMAT CSV, HEADER);

select * from currencies;

select count(*) from currency;

SELECT 2+2;

SELECT 11.0/6;

SELECT CAST (11 AS numeric(3,1)) / 6;

SELECT 3 ^ 4;
SELECT |/ 10;

SELECT 4 !;

CREATE TABLE percentile_test (
numbers integer
);

INSERT INTO percentile_test (numbers) 
VALUES(10),(11),(12),(23);

select * from percentile_test;


SELECT
percentile_cont(.5)
WITHIN GROUP (ORDER BY numbers),
percentile_disc(.5)
WITHIN GROUP (ORDER BY numbers)
FROM percentile_test;


SELECT percentile_cont(array[.25,.5,.75,1])
WITHIN GROUP (ORDER BY numbers) AS "quartiles"
FROM percentile_test;
 
 
 --unnest function
SELECT unnest(
percentile_cont(array[.25,.5,.75])
WITHIN GROUP (ORDER BY numbers)
) AS "quartiles"
FROM percentile_test;

SELECT mode() WITHIN GROUP (ORDER BY numbers)
FROM percentile_test;


select (3.01*5^2);
