-- Crear una funcio n MySQL llamada calcular_promedio_pedidos_cliente que:
-- ➢ Reciba como para metro el ID de un cliente.
-- ➢ Retorne el promedio del total (sin IVA) de todos los pedidos realizados por ese cliente.
-- ➢ Si el cliente no tiene pedidos, retorne 0. --

use GaseosasValle;


delimiter $$
create function promedio_pedido_por_cliente(p_id_cliente int)
returns decimal(10,2)
deterministic
begin
		declare promedio decimal(10,2);
	select AVG(total_sin_iva)  into promedio
	from pedidos p 
	where id_cliente=p_id_cliente;
	return ifnull (promedio, 0);
end $$
delimiter ;

