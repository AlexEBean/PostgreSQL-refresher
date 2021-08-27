-- Items in the first query, but not the second one
-- MySQL does not support EXCEPT operator

SELECT country FROM customers
EXCEPT
SELECT country FROM suppliers;

-- MySQL
-- SELECT DISTINCT country
-- FROM customers
-- WHERE country  NOT IN (
--     SELECT country 
--     FROM suppliers
-- )

-- EXCEPT ALL will grab duplate values, not just Distinct ones

SELECT country FROM customers
EXCEPT ALL
SELECT country FROM suppliers

-- MySQL
-- SELECT c.country, s.country
-- FROM customers c
-- LEFT JOIN suppliers s
-- 	USING(country)
--     WHERE s.country IS NULL

SELECT COUNT(*) FROM
(SELECT country FROM customers
EXCEPT ALL
SELECT country FROM suppliers) AS same_country;

-- MySQL
-- SELECT COUNT(*) FROM
-- (SELECT c.country
-- FROM customers c
-- LEFT JOIN suppliers s
-- 	USING(country)
--     WHERE s.country IS NULL) AS same_country;

SELECT city FROM suppliers
EXCEPT
SELECT city FROM customers;

-- MySQL
-- SELECT DISTINCT city
-- FROM suppliers
-- WHERE city  NOT IN (
--     SELECT city 
--     FROM customers
-- )

SELECT COUNT(*) FROM
(SELECT city FROM customers
EXCEPT ALL
SELECT city FROM suppliers) AS lonely_customers;

-- MySQL

-- SELECT COUNT(*) FROM
-- (SELECT c.city 
-- FROM customers c
-- LEFT JOIN suppliers s
-- USING (city)
-- WHERE s.city IS NULL) 
-- AS lonely_customers;
