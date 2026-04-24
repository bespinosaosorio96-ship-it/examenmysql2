-- ➢ Crear un trigger llamado auditar_cambio_precio que:
-- ➢ Se ejecute despue s de un UPDATE en la tabla de productos.
-- • Registre en una tabla auditoria_precios los campos:
-- ➢ id_producto, precio_anterior, precio_nuevo, fecha_modificacion.
-- ➢ Solo se debe registrar si el precio realmente cambio .


delimiter $$

create trigger auditar_cambio_precio
after update on productos 
for each row
begin
	if old.precio <> new.precio then
	insert into auditoria_precios(id_producto, precio_anterior, precio_nuevo)
	values (old.id_producto, old.precio, new.precio);
	end if;
end $$
delimiter ;

 
