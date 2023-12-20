DELIMITER $$
CREATE PROCEDURE get_invoices_by_client(
	client_id int
)
BEGIN
	SELECT *
    FROM invoicing.invoices i
    WHERE i.client_id = client_id;
END $$

DELIMITER ;