SELECT COUNT(*)
FROM customers
WHERE country = 'USA' OR country = 'Canada';

SELECT COUNT(*)
FROM customers
WHERE country = 'Germany' OR country = 'Spain';

SELECT COUNT(*)
FROM orders
WHERE shipcountry = 'USA' OR shipcountry = 'Brazil'
OR shipcountry = 'Argentina';
