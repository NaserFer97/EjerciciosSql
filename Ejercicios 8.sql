SELECT factura.id, sum(round(factura_detalle.cantidad * producto.precio)) totales  from factura join factura_detalle on factura_detalle.factura_id = factura.id
join producto on factura_detalle.producto_id = producto.id
group by factura.id
ORDER BY  totales DESC