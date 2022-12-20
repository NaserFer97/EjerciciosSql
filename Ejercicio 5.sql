SELECT producto.nombre, sum(round(factura_detalle.cantidad)) from producto join factura_detalle on factura_detalle.producto_id = producto.id
group by producto.nombre
order by sum(factura_detalle.cantidad) desc