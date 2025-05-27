DELIMITER //
CREATE FUNCTION nome_data_fund () RETURNS VARCHAR(1000)
NOT DETERMINISTIC
READS SQL DATA
BEGIN
	DECLARE listacidades VARCHAR(1000);
    SELECT GROUP_CONCAT(nome, ':', datafundacao ORDER BY datafundacao) as 
    cidades from cidade INTO listacidades;
	RETURN listacidades;
END //

DELIMITER ;

SELECT nome_data_fund();