-- ORDERING RESULTS

-- Populations of all countries in descending order
select name, population from country order by population DESC;
--Names of countries and continents in ascending order
select name, continent from country order by continent ASC, name ASC;
-- LIMITING RESULTS
-- The name and average life expectancy of the countries with the 10 highest life expectancies.
Select name, lifeexpectancy from country where lifeexpectancy is not null order by lifeexpectancy DESC limit 10;

select name, round(gnp /population, 4) AS per_capita_gnp from country where gnp > 0;
-- CONCATENATING OUTPUTS

-- The name & state of all cities in California, Oregon, or Washington.
-- "city, state", sorted by state then city
select (name || ', ' || district) as name_and_state
from city
where district in ('California', 'Oregon', 'Washington')
order by district, name 
-- AGGREGATE FUNCTIONS
-- Average Life Expectancy in the World
select avg(lifeexpectancy) 
from country;
-- Total population in Ohio
select sum(population) 
from city
where district = 'Ohio';
-- The surface area of the smallest country in the world
select min(surfacearea)
from country;
-- The 10 largest countries in the world
select *
from country
order by surfacearea desc
limit 10;
-- The number of countries who declared independence in 1991
select count(*)
from country 
where indepyear = 1991;


select min(population), region from country
group by region;


-- GROUP BY
-- Count the number of countries where each language is spoken, ordered from most countries to least
select language, count(countrycode) as countries
from countrylanguage
group by language
order by countries desc;
-- Average life expectancy of each continent ordered from highest to lowest
select continent, avg(lifeexpectancy) as average_lifeexpectancy
from country
group by continent
order by average_lifeexpectancy desc; 
-- Exclude Antarctica from consideration for average life expectancy
select continent, avg(lifeexpectancy) as average_lifeexpectancy
from country
where continent != 'Antartica' and lifeexpectancy is not null
group by continent
order by average_lifeexpectancy desc; 

-- Sum of the population of cities in each state in the USA ordered by state name
select district, sum(population) 
from city
where countrycode = 'USA'
group by district
order by district;
-- The average population of cities in each state in the USA ordered by state name
select district, round(avg(population), 0)
from city
where countrycode = 'USA'
group by district
order by district;
-- SUBQUERIES

--All the cities on the REGION brotish islands
select * from city
where countrycode in ('GBR', 'IRL');

select * from country
where region = 'British Islands'; -- THis query returns: GBR, IRL the same as the values in our In above

-- Since the second query returns the data needed int he where clause, the query can be used in the where clause to provide the values
select * from city
where countrycode in (Select code from country where region = 'British Islands');
-- Find the names of cities under a given government leader
Select code from country where headofstate = 'Elisabeth II'

select * from city
where countrycode in(Select code from country where headofstate = 'Elisabeth II');
-- Find the names of cities whose country they belong to has not declared independence yet
select * from city
where countrycode in (select code from country where indepyear is null);


-- Additional samples
-- You may alias column and table names to be more descriptive
select name as city_name
from city as cities;

-- Alias can also be used to create shorthand references, such as "c" for city and "co" for country.
select c.name, co.name
from city as C, country as co

-- Ordering allows columns to be displayed in ascending order, or descending order (Look at Arlington)
select name, population
from city
where countrycode = 'USA'
order by name asc, population desc;

-- Limiting results allows rows to be returned in 'limited' clusters,where LIMIT says how many, and OFFSET (optional) specifies the number of rows to skip
select name, population 
from city
limit 10 offset 10;

-- Most database platforms provide string functions that can be useful for working with string data. In addition to string functions, string concatenation is also usually supported, which allows us to build complete sentences if necessary.
select (name || ' is in the state of ' || district) as city_state
from city
where countrycode = 'USA';

-- Aggregate functions provide the ability to COUNT, SUM, and AVG, as well as determine MIN and MAX. Only returns a single row of value(s) unless used with GROUP BY.


-- Counts the number of rows in the city table
select count(*) as city_count
from city;

-- Also counts the number of rows in the city table
select count(population) as city_count
from city;

-- Gets the SUM of the population field in the city table, as well as
-- the AVG population, and a COUNT of the total number of rows.
select sum(population) as total_city_population, count(population) as number_of_cities, avg(population) as average_population
from city;
-- Gets the MIN population and the MAX population from the city table.
select min(population) as smallest_population, max(population) as largest_population
from city;
-- Using a GROUP BY with aggregate functions allows us to summarize information for a specific column. For instance, we are able to determine the MIN and MAX population for each countrycode in the city table.
select countrycode, min(population) as smallest_population, max(population) as largest_population
from city
group by countrycode;