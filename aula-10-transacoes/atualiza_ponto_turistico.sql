SET AUTOCOMMIT = 0;

-- ROLLBACK VOLTA PARA CÁ
BEGIN;

UPDATE pontoturistico SET Nome = '...' where idcidade = 1;

-- ROLLBACK;
COMMIT;
SELECT * FROM pontoturistico where idcidade = 1;

