SELECT *
FROM orders
JOIN orderdetails USING (orderid);
-- Same as 
-- JOIN orderdetails ON  orders.orderid = orderdetails.orderid

-- USING keyword only works if the column name is the same between tables

SELECT *
FROM orders
JOIN orderdetails USING (orderid)
JOIN products USING (productid);
