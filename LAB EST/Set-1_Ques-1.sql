SELECT 
    p.product_name,
    COALESCE(SUM(o.quantity), 0) AS total_quantity
FROM 
    Products p
LEFT JOIN 
    Orders o
ON 
    p.product_id = o.product_id
GROUP BY 
    p.product_name;
