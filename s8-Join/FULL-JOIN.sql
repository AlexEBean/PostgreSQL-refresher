-- LEFT and RIGHT JOIN together.  So in the first example, you would get orders that don't have customers and customers that don't have orders as some of the results
-- This can be used to find orphaned records.

SELECT companyname, orderid
FROM orders
FULL JOIN customers ON customers.customerid = orders.customerid;

SELECT productname, categoryname
FROM categories
FULL JOIN products ON products.categoryid = categories.categoryid;


-- MySQL does not support FULL JOIN
-- This template would achieve an eqivalent to full join

SELECT * FROM a
LEFT JOIN b ON a.id = b.id
UNION
SELECT * FROM a
RIGHT JOIN b ON a.id = b.id;

SELECT productname, categoryname 
FROM categories c
LEFT JOIN products p ON c.CategoryID = p.CategoryID
UNION
SELECT productname, categoryname 
FROM categories c
RIGHT JOIN products p ON c.CategoryID = p.CategoryID;

-- Alternatively,
SELECT productname, categoryname 
FROM categories c
LEFT JOIN products p ON c.CategoryID = p.CategoryID
UNION
SELECT productname, categoryname 
FROM products p 
LEFT JOIN categories c ON p.CategoryID = c.CategoryID;