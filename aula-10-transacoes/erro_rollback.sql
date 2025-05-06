SET AUTOCOMMIT = 0;

BEGIN;
INSERT INTO Cidade 
(IDCidade, Nome, Pais, Capital, Populacao, DataFundacao) 
VALUES (40, 'Rio de Janeiro', 'Brasil', 
FALSE, 6000000, '1555-01-01');

-- SCRIPT RODA ATÉ AQUI
INSERT INTO PontoTuristico 
(IDPontoTuristico, Nome, Descricao, IDCidade) 
VALUES (100, 'Cristo Redentor', 'B', 41);

ROLLBACK;

SELECT * FROM Cidade;