SELECT cliente.nombre, cliente.apellido, cliente.nro_cedula, count (factura.cliente_id) from cliente join factura on factura.cliente_id = cliente.id
group by cliente.nombre, cliente.apellido, cliente.nro_cedula
order by count (factura.cliente_id) desc;




