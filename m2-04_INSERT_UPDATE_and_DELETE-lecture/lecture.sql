-- INSERT

-- 1. Add Klingon as a spoken language in the USA

insert into countrylanguage (countrycode, language, isofficial, percentage)
values ('USA', 'Klingon', false, 99);


-- 2. Add Klingon as a spoken language in Great Britain
insert into countrylanguage (isofficial, percentage, language, countrycode)
values (false, 25, 'Klingon', 'GBR');
select * from countrylanguage 


-- UPDATE
select * from country where code = 'USA';
select * from city where name = 'Houston';
-- 1. Update the capital of the USA to Houston
UPDATE country 
set capital = 3796
where code = 'USA';

-- 2. Update the capital of the USA to Washington DC and the head of state
update country
set capital = 3813, headofstate = 'Mickey Mouse'
where code = 'USA';

-- DELETe

-- 1. Delete English as a spoken language in the USA
select * from countrylanguage

delete from countrylanguage 
where countrycode = 'USA' and language = 'English'
-- 2. Delete all occurrences of the Klingon language 
select * from countrylanguage
where language = 'Klingon';


delete from countrylanguage
where language = 'Klingon';

-- REFERENTIAL INTEGRITY
delete from country
where code = 'USA'-- doesnt work because of RI
-- 1. Try just adding Elvish to the country language table.
insert into countrylanguage (language) values ('Elvish')

-- 2. Try inserting English as a spoken language in the country ZZZ. What happens?
insert into countrylanguage (countrycode,language, isofficial, percentage) values ('ZZZ', 'Elvish', false, 10);


-- 3. Try deleting the country USA. What happens?
delete from country where code = 'USA';

-- CONSTRAINTS

-- 1. Try inserting English as a spoken language in the USA
insert into countrylanguage (countrycode, language, isofficial, percentage)
values ('USA', 'English', false, 0);
-- 2. Try again. What happens?
insert into countrylanguage (countrycode, language, isofficial, percentage)
values ('USA', 'English', false, 0);-- fails because of uniwue constraint
-- 3. Let's relocate the USA to the continent - 'Outer Space'
update country set continent = 'Outer Space' where code = 'USA';

-- How to view all of the constraints

SELECT * FROM INFORMATION_SCHEMA.TABLE_CONSTRAINTS
SELECT * FROM INFORMATION_SCHEMA.CONSTRAINT_COLUMN_USAGE
SELECT * FROM INFORMATION_SCHEMA.REFERENTIAL_CONSTRAINTS


-- TRANSACTIONS
select * from countrylanguage;
-- 1. Try deleting all of the rows from the country language table and roll it back.
start transaction;
delete from countrylanguage;
rollback;


-- 2. Try updating all of the cities to be in the USA and roll it back
select * from city
start transaction;
update city set countrycode = 'USA';
rollback;