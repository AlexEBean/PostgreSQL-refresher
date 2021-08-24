SELECT companyname,orderdate,unitprice,quantity
FROM orders
JOIN order_details ON orders.orderid = order_details.orderid
JOIN customers ON customers.customerid = orders.customerid;

SELECT companyname, productname, orderdate, order_details.unitprice, quantity
FROM orders
JOIN order_details ON orders.orderid = order_details.orderid
JOIN customers ON customers.customerid = orders.customerid
JOIN products ON products.productid = order_details.productid;

SELECT companyname, productname, categoryname,
	     Orderdate, order_details.unitprice, quantity
FROM orders
JOIN order_details ON orders.orderid = order_details.orderid
JOIN customers ON customers.customerid = orders.customerid
JOIN products ON products.productid = order_details.productid
JOIN categories ON categories.categoryid = products.categoryid;

SELECT companyname, productname, categoryname,
	    orderdate, order_details.unitprice, quantity
FROM orders
JOIN order_details ON orders.orderid = order_details.orderid
JOIN customers ON customers.customerid = orders.customerid
JOIN products ON products.productid = order_details.productid
JOIN categories ON categories.categoryid=products.categoryid
WHERE 	categoryname = 'Seafood' AND
		order_details.unitprice*quantity >= 500;
