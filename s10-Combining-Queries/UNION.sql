SELECT companyname
FROM customers
UNION
SELECT companyname
FROM suppliers;

-- UNION ALL doesn't remove duplicates

SELECT city
FROM customers
UNION ALL
SELECT city
FROM suppliers;

SELECT country
FROM customers
UNION
SELECT country
FROM suppliers
ORDER BY country;

SELECT country
FROM customers
UNION ALL
SELECT country
FROM suppliers
ORDER BY country;
