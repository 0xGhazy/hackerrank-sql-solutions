SELECT
	client_id,
    name,
    (
		SELECT SUM(invoice_total)
		FROM invoices i
		WHERE client_id = c.client_id
	) AS total_sales,
	(
		SELECT AVG(invoice_total)
		FROM invoices
	) AS average,
	(SELECT total_sales - average) AS difference
FROM clients c;