SELECT o.order_id, 
		p.product_id,
        quantity,
        o.unit_price
FROM store.order_items o
JOIN store.products p ON o.product_id = p.product_id;