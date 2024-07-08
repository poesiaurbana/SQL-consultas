--consultas donde se utiliza where

-- de la tabla customer_id seleccionar los que no sean de usa
select customerid, companyname, country
	    from customers
	    where Country <> 'USA';

--se hacen operaciones * y se seleccionan las que la multiplicacion de mas de 1000
select productname, unitprice, unitsinstock, 
		(unitprice * unitsinstock) AS "Total Value" 
	    from products
           where (unitprice * unitsinstock) > 1000;

-- de la tabla product escoger de la columba quantity_per_unit escoger los que elementos que 
--tengan la palabra bottles
select productid, productname, quantityperunit 
	    from products
	    where quantityperunit like '%bottles%';

--solo se escogen los category_id seleccionados
select product_id, product_name, unit_price,category_id
	    from products
	    where category_id in (1, 3, 5, 7);

--seleccionando rango de fechas apartir de otra seleccion que es el shipcountra=Canada
select orderid, customerid, shippeddate
	    from orders
	    where shipcountry = 'Canada'and shippeddate between '1996-12-01' and '1997-01-31';

--concatena el nombre y apellido en la columna employe, calcula la edad que tenia el empleado cuando fue contratado
--y la convierte en texto
--age hace la diferencia entre dos fechas
SELECT Employee_ID, First_name || ' ' || Last_name as "employee",
		cast (age(Hire_Date, Birth_Date)as text) AS HIRE_AGE 
   	FROM employees;

--hace la resta entre la fecha actual y una fecha establecidad la convierte en texto y la pone en la columna
--my age
SELECT cast (age(now(), '1991-03-19')as text) AS MY_AGE

--concatena nombre y apellido donde el anio de contratacion es 1993
SELECT Employee_ID, First_name || ' ' || Last_name as "employee", hire_date 
	FROM employees 
	WHERE Date_part('year', hire_date) = 1993; 