-- SELECT ... FROM
-- Selecting the names for all countries
SELECT name FROM country;


-- Selecting the name and population of all countries
SELECT name, population FROM country;


-- Selecting all columns from the city table
SELECT * FROM city;


-- Select all unique country codes from city table
SELECT DISTINCT countrycode FROM city;

-- Select the name for all countries as country_name
SELECT name AS country_name from country;

-- SELECT ... FROM ... WHERE
-- Selecting the cities in Ohio
SELECT * FROM city WHERE district = 'Ohio';


-- Selecting countries that gained independence in the year 1776
SELECT * FROM country WHERE indepyear = 1776;


-- Selecting countries not in Asia
SELECT * FROM country WHERE continent != 'Asia';


-- Selecting countries that do not have an independence year
SELECT * FROM country WHERE indepyear IS NULL;

-- Selecting countries that do have an independence year
SELECT * FROM country WHERE indepyear IS NOT NULL;


-- Selecting countries that have a population greater than 5 million
SELECT * FROM country WHERE population > 5000000;



-- SELECT ... FROM ... WHERE ... AND/OR
-- Selecting cities in Ohio and Population greater than 400,000
SELECT * from city where district = 'Ohio' and population > 400000;

-- Selecting country names on the continent North America or South America
select name from country where continent = 'North America' or continent = 'South America'; 
select name from country where continent IN ('North America', 'South America');


-- Select country name not on the contient North America pr South AMerica
select name from country where continent NOT IN ('North America', 'South America');

--Select country names that begin with the letter A
Select name from country where name LIKE ('A%');

--Select country names that end with the letter a
Select name from country where name LIKE ('%a');

-- Select contry names that have a letter a between the first and last character
select name from country where name like ('%a%');

-- SELECTING DATA w/arithmetic
-- Selecting the population, life expectancy, and population per area
--	note the use of the 'as' keyword

select name, population, surfacearea, lifeexpectancy, (population / surfacearea) As density from country
Where continent = 'Asia';


