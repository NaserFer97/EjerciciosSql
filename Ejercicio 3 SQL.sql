SELECT moneda.nombre, count(moneda.nombre) cantidad from moneda join factura on factura.moneda_id = moneda.id 
GROUP BY (moneda.nombre)
order by cantidad desc