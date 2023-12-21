USE sql_optics;

-- List the total purchases of a customer.
SELECT 
    cliente.id_customer,
    cliente.name AS NombreCliente,
    SUM(gafas.price) AS TotalCompras
FROM 
    customers cliente
JOIN 
    sales ventas ON cliente.id_customer = cliente.id_customer
JOIN 
    glasses gafas ON ventas.id_glasses = gafas.id_glasses
WHERE 
    cliente.id_customer = 3
GROUP BY 
    cliente.id_customer, cliente.name;

-- List the different glasses that an employee has sold over a year.
SELECT 
    empleado.id_employee,
    empleado.name AS NombreEmpleado,
    gafas.brand AS MarcaGafas,
    gafas.price AS Precio,
    COUNT(*) AS CantidadVentas,
    ventas.sale_datetime AS FechaVenta
FROM 
    sales ventas
JOIN 
    glasses gafas ON ventas.id_glasses = gafas.id_glasses
JOIN 
    employees empleado ON ventas.id_employee = empleado.id_employee
WHERE 
    empleado.id_employee = 3 AND
    YEAR(ventas.sale_datetime) = 2023
GROUP BY 
    gafas.id_glasses, gafas.brand, gafas.price, ventas.sale_datetime, empleado.id_employee, empleado.name
ORDER BY 
    ventas.sale_datetime;

-- List the different suppliers who have provided glasses successfully sold by the optician's shop.
SELECT DISTINCT
    proveedor.id_provider,
    proveedor.name AS NombreProveedor
FROM 
    providers proveedor
JOIN 
    glasses gafas ON proveedor.id_provider = gafas.id_provider
JOIN 
    sales ventas ON ventas.id_glasses = ventas.id_glasses;

