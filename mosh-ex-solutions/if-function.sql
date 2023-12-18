SELECT 
	product_id,
    name,
    COUNT(*) AS orders,
    IF(COUNT(*) > 1, 'Many times', 'Once') AS frequency
FROM products
JOIN order_items USING(product_id)
GROUP BY product_id, name