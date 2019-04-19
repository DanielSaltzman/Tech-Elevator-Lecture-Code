-- These queries require the JOINS database

--INNER JOIN  (DEFAULT IF JUST USE JOIN)
SELECT one.number AS one_number, one.description as one_description, two.number as two_number, two.description as two_description
FROM one 
join two on one.number = two.number;


--LEFT JOIN  (Left Outer Join)
SELECT one.number AS one_number, one.description as one_description, two.number as two_number, two.description as two_description
FROM one
left join two on one.number = two.number;


--RIGHT JOIN  (Right Outer Join)
SELECT one.number AS one_number, one.description as one_description, two.number as two_number, two.description as two_description
FROM one
right join two on one.number = two.number;


--FULL OUTER JOIN
SELECT one.number AS one_number, one.description as one_description, two.number as two_number, two.description as two_description
FROM one
full outer join two on one.number = two.number;

--Everything from ONLY the left table
SELECT one.number AS one_number, one.description as one_description, two.number as two_number, two.description as two_description
FROM one
left join two on one.number = two.number
where two.number is null;

--Everything from ONLY the right table
SELECT one.number AS one_number, one.description as one_description, two.number as two_number, two.description as two_description
FROM one
right join two on one.number = two.number
where one.number is null;


--Everything in ONLY the Left or Right table, but not both
SELECT one.number AS one_number, one.description as one_description, two.number as two_number, two.description as two_description
FROM one
full outer join two on one.number = two.number
where one.number is null or two.number is null;

--UNION
-- Create a Union between the two tables that shows all values from both in two columns
select number, description from one
union
select number, description from two
order by number;







