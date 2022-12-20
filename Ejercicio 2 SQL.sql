SELECT cliente.nombre, sum(round(factura_detalle.cantidad * producto.precio)) from producto 
join factura_detalle on producto_id = factura_detalle.producto_id 
join factura on factura.id = factura_detalle.factura_id
join cliente on factura.cliente_id = cliente.id 
group by cliente.nombre
order by  sum(factura_detalle.cantidad * producto.precio)desc
