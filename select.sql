--consultas para el curso sql coursera se hace sobre la BD Northwinds

--consulta basica sobre la tabla products
select productid, productname, quantityperunit, unitprice, unitsinstock
	from products;

--concatenando nombre y apellido, sacando solo el anio de hiredate
select concat(firstname,' ', lastname), hiredate, date_part('year', hiredate)
	from employees;

--se hacen operaciones con las columbas y se pone en una nueva columna
select productname, unitprice, unitsinstock, 
		(unitprice * unitsinstock) AS "Total Value" 
	from products;

--concatenando nombres y scando solo el mes del cumpleanios
select concat(firstname,' ', lastname), birthdate, to_char(birthdate, 'month')
	from employees;