DELIMITER //

CREATE  TRIGGER before_insert_ponto_turistico
BEFORE INSERT ON pontoturistico
FOR EACH ROW
BEGIN
    IF(LENGTH(NEW.descricao) < 20) THEN
		signal sqlstate '45000' set message_text = 'Descrição deve possuir pelo menos 20 caracteres';
	end if;
END //

DELIMITER ;
INSERT INTO pontoturistico (nome, descricao, IDCidade) 
VALUES ('AKPFMAKP', 'aaaa', 1);