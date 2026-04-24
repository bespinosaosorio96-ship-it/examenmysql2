-- • Crear una vista llamada vista_resumen_sedes que:
-- ➢ Muestre por cada sede:
-- ▪ Nombre de la sede
-- ▪ Cantidad total de pedidos despachados
-- ▪ Valor total vendido (sin IVA)
-- ▪ Promedio de valor por pedido
-- ▪ La vista debe usar JOIN entre pedidos y sedes, y agrupar correctamente los
-- resultados.

use GaseosasValle;
-- resumen ventas sede

create view vista_resumen_sede as 
select 
	s.nombre_sede,
	count(p.id_pedido) as 'Cantidad Pedidos',
	sum(p.total_sin_iva) as 'Total ventas sin iva',
	avg(p.total_sin_iva) as 'promedio total vendido'
from sedes s 
left join pedidos p on s.id_sede = p.id_sede
group by s.nombre_sede;







