--suma el producto de la unidad por cantidad y las ordena por orderID
--lo ordena por total value
--solo imprime los 5 primeros de forma descendente
SELECT OrderID,  
		SUM(UnitPrice * Quantity) AS "Total Value"  
    FROM orderdetails 
GROUP BY OrderID 
ORDER BY 2 DESC LIMIT 5;

--cuenta los productos con unidades en stock
SELECT count(productid)  
    FROM products 
		Where unitsinstock > 0; 

--cuenta cuantos productos estan sin stock
SELECT count(productid)  
    FROM products 
		Where unitsinstock = 0; 

--cuenta cuantos productos estan relacionados con los proveedores
--los ordena segun el id del producto
SELECT supplierid, count(productid)  
    FROM products 
GROUP BY supplierid 
ORDER BY 2;  

--cuenta la cantidad de ordenes por empleado mayores a 100
SELECT employeeid, count(orderid) AS "Orders"  
   FROM orders 
GROUP BY employeeid 
HAVING count(orderid) > 100 
ORDER BY 2 desc;  