DELIMITER $$
CREATE PROCEDURE get_payments(
	client_id INT,
    payment_method_id TINYINT
)
BEGIN
	IF (client_id IS NULL) AND (payment_method_id IS NULL) THEN
		SELECT * FROM payments;
	ELSEIF (client_id IS NOT NULL) AND (payment_method_id IS NULL) THEN
		SELECT * from payments p WHERE p.client_id = client_id;
	ELSEIF (client_id IS NULL) AND (payment_method_id IS NOT NULL) THEN
		SELECT * from payments p WHERE p.payment_method = payment_method_id;
	ELSEIF (client_id IS NOT NULL) AND (payment_method_id IS NOT NULL) THEN
		SELECT * from payments p WHERE p.client_id = client_id AND p.payment_method = payment_method_id;
	END IF;
END $$
DELIMITER ;