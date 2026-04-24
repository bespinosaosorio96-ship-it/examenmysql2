-- • Realizar una consulta con subconsulta que:
-- ➢ Muestre el nombre del producto, categorí a y stock
-- ➢ Solo incluya los productos cuyo precio sea mayor al promedio general de precios de todos
-- los productos

select * from productos;

select nombre, categoria, stock_actual 
from productos p 
where precio>(
	select AVG(precio)
	from productos p2);
