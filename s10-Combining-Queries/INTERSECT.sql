-- MySQL does not support INTERSECT operator

-- INTERSECT will find all the countries found in both tables
SELECT country FROM customers
INTERSECT
SELECT country FROM suppliers;

-- This is the eqivalent of above in MySQL
SELECT DISTINCT country FROM customers
   JOIN suppliers USING(country);

SELECT COUNT(*) FROM
(SELECT country FROM customers
INTERSECT ALL
SELECT country FROM suppliers) AS same_country;

-- MySQL
-- SELECT COUNT(*) FROM
-- (SELECT DISTINCT country FROM customers
--    JOIN suppliers USING(country)) AS same_country;

SELECT city
FROM customers
INTERSECT
SELECT city
FROM suppliers
ORDER BY country;

-- MySQL
-- SELECT DISTINCT city
-- FROM customers
-- JOIN suppliers USING(city)
-- ORDER BY city;

SELECT COUNT(*) FROM
(SELECT city FROM customers
INTERSECT
SELECT city FROM suppliers ) AS same_city;

-- MySQL
-- SELECT COUNT(*) FROM
-- (SELECT DISTINCT city
-- FROM customers
-- JOIN suppliers USING(city)
-- ORDER BY city) AS same_city;