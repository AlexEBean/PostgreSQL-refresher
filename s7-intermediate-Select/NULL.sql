SELECT count(*)
FROM customers
WHERE region IS NULL;

SELECT count(*)
FROM suppliers
WHERE region IS NOT NULL;

SELECT count(*)
FROM orders
WHERE shipregion IS NULL;
