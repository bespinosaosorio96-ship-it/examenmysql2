# examen msql 2
gaseosas del valle s.a. - sistema de gestión de inventario y ventas
este proyecto consiste en el diseño e implementación de una base de datos relacional para la empresa gaseosas del valle s.a., automatizando el control de stock, el cálculo de impuestos y la generación de reportes estratégicos.

🚀 características principales
automatización de inventario: mediante triggers, el stock se actualiza automáticamente al registrar una venta.

triggerexamen:auditar_cambio_precio seguimiento histórico de cambios en los precios de los productos.

cuando intentamos hacer un update al precio ed cualquier producto simepre y cueando este sea difierente se registarra en la tabla auditoria precio,


functionexamen.sql contiene la funcion :promedio_pedido_por_cliente
esta al igresar el id de caulquier cliente nos va amostrar el promedio total de sus pedidos

subconsultaexamen.sql en esta nos muestra los productos cuyo precio es mayor al proemdio de todos los productos

viwexamen.sql en este se encuentra la view llamada: vista_resumen_sede en esta encontramos la consulta que nos muestra un las ventas sin iva por sede y la cantidad de pedisos de cada sede





