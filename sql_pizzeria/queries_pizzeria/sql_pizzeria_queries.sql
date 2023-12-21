USE sql_pizzeria;

-- Show how many 'Beverage' type products have been sold in a specific location.
SELECT 
    COUNT(pedido_productos.id_product) AS TotalBebidasVendidas
FROM 
    orders pedidos
JOIN 
    order_products pedido_productos ON pedidos.id_order = pedido_productos.id_order
JOIN 
    products producto ON pedido_productos.id_product = producto.id_product
JOIN 
    categories categoria ON producto.id_category = categoria.id_category
JOIN 
    stores tienda ON pedidos.id_store = tienda.id_store
WHERE 
    categoria.name = 'Bebidas' AND 
    tienda.city = 'Madrid';
    
-- Show how many orders a specific employee has placed.
SELECT 
    empleado.id_employee,
    empleado.name,
    COUNT(pedidos.id_order) AS TotalPedidosRealizado
FROM 
    employees empleado
JOIN 
    delivery envio ON empleado.id_employee = envio.id_employee
JOIN 
    orders pedidos ON envio.id_order = pedidos.id_order
WHERE 
    empleado.id_employee = 4
GROUP BY 
    empleado.id_employee, empleado.name;