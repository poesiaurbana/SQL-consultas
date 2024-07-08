--Selecciona de la tabla productos el precio mimimo
select productID, productname, unitprice 
    from products 
    where UnitPrice = ( 
		select MIN(UnitPrice)  
		from products ); 
--se hace una consulta donde se mezclan datos de dos tablas
SELECT count(orderid) 
    FROM orders 
    WHERE customerid NOT IN ( 
		SELECT customerID FROM customers); 