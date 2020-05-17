--CONSULTAR EN LA BD
--MOSTRAR TODOS LOS DATOS DE LA TABLA
--CATEGORIA
select * from categories;

--Mostrar solo los campos deseados
select categoryname, description
from categories;

--Cambiar el orden de las columnas
select
description, categoryid, categoryname
from categories;

--SE PUEDEN HACER OPERACIONES
select 2+2;

--ALIAS PARA USUARIOS NO TAN PRO
select categoryid as CODIGO,
       categoryname as CATEGORIA,
	   description as 'DESCRIPCION COMPLETA'
from categories
where categoryid = 2;

--ALIAS PARA LAS TABLAS
select p.productid as ID, 
       p.productname as NOMBRE,
       p.unitprice AS PRECIO
	   from products as p;


	   --Mostrar todos los productos que valen
	   --$95.00 o menos

	   select *
	   from products

	   where unitprice <= 95;

--Mostrar todos los datos de los productos 
--que valen mas de $95.00.
-- r/ 3 registros

select *
from products 

where unitprice  > = 95;


--mostrar todos los datos de los productos
--que valen entre $15.00 y $74.50. Ambos
--inclusive


--mostar todo los productos que sean de
--las categorias 1 y 3; ademas de que cum´plan
--con el rango de precios desde $10.00
--hasta $50.00
select * from products
where (categoryid = 1 or categoryid = 3)
and (unitprice > = 10 and unitprice < = 50)

--consultas con predicados
--IS NULL / is not null

select * from customers
where region is null;

select * 
FROM products
WHERE unitprice > 
ALL (SELECT
     unitprice
	 FROM products
	 WHERE categoryid = 5);


	 --Mostrar los primeros 10 productos
	 select top 10 * from products;

--Mostrar los 10 productos mas caros
select top 10 * from products
order by unitprice desc;

--Mostrar los 10 Productos mas baratos
select top 10 * from products
order by unitprice 

--Mostrar el producto mas caro de la
--categoria 1

select top 1 *  from products
by

--Mostrar el producto mas barato de la
--categoria 5

