select proveedor.nombre, count (producto.nombre) from proveedor join producto on producto.proveedor_id = proveedor.id
Group by proveedor.nombre
order by count (producto.nombre) desc
