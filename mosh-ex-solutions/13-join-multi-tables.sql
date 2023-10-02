SELECT 
	ip.date,
    ip.invoice_id,
    ip.amount,
    ic.name as CLIENT_NAE,
    ipm.name AS PAYMENT_NAME
FROM invoicing.payments ip
INNER JOIN invoicing.payment_methods ipm ON ip.payment_method = ipm.payment_method_id
INNER JOIN invoicing.clients ic ON ip.client_id = ic.client_id;