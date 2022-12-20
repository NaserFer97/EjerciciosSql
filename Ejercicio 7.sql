SELECT  cliente.nombre, cliente.apellido, factura.fecha_emision, factura_tipo.nombre, producto.nombre, factura_detalle.cantidad from cliente join factura on factura.cliente_id = cliente.id 
join factura_tipo on factura.factura_tipo_id = factura_tipo.id
join factura_detalle on factura_detalle.factura_id = factura.id
join producto on factura_detalle.producto_id = producto.id



