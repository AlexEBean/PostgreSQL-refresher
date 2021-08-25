-- In MySQL, you could just GROUP BY then separate the fields with a comma. However, this wouldn't include the total for everything in a category name, referring to the first example

SELECT categoryname,productname,SUM(od.unitprice*quantity)
FROM categories
NATURAL JOIN products
NATURAL JOIN orderdetails AS od
GROUP BY GROUPING SETS  ((categoryname),(categoryname,productname))
-- GROUP BY categoryname, productname
ORDER BY categoryname, productname;

SELECT c.companyname AS buyer,s.companyname AS supplier,SUM(od.unitprice*quantity)
FROM customers AS c
NATURAL JOIN orders
NATURAL JOIN orderdetails AS od
JOIN products USING (productid)
JOIN suppliers  AS s USING (supplierid)
GROUP BY GROUPING SETS ((buyer),(buyer,supplier))
ORDER BY buyer,supplier;

SELECT companyname,categoryname,SUM(od.unitprice*quantity)
FROM customers AS c
NATURAL JOIN orders
NATURAL JOIN orderdetails AS od
JOIN products USING (productid)
JOIN categories  AS s USING (categoryid)
GROUP BY (companyname),(companyname,categoryname)
ORDER BY companyname,categoryname NULLS FIRST;
