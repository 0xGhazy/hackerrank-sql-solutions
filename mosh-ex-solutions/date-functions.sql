SELECT * 
FROM orders
WHERE YEAR(order_date) = YEAR(NOW())