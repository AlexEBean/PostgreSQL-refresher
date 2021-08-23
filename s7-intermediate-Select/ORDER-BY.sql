SELECT DISTINCT country
FROM suppliers
ORDER BY country;

SELECT DISTINCT country
FROM suppliers
ORDER BY country DESC;

SELECT DISTINCT country, city
FROM suppliers
ORDER BY country, city;

SELECT productname, unitprice
FROM products
ORDER BY unitprice DESC, productname;
