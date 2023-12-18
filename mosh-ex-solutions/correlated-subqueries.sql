SELECT *
FROM invoicing.invoices inv
WHERE inv.invoice_total > (
	SELECT AVG(invoice_total)
    FROM invoicing.invoices
    WHERE inv.client_id = client_id
)