-- Sometimes, NATURAL produces unexpected results
-- It will join based on column names in common

SELECT *
FROM orders
NATURAL JOIN orderdetails;

SELECT *
FROM customers
NATURAL JOIN orders
NATURAL JOIN orderdetails;


--notice the difference between these two joins
SELECT COUNT(*)
FROM products
NATURAL JOIN orderdetails;  --this is joining on both productid and unitprice

-- Result: 1496

SELECT COUNT(*)
FROM products
JOIN orderdetails USING (productid);

-- Result: 2155