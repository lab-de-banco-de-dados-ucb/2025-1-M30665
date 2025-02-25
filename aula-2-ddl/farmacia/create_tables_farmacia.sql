CREATE DATABASE IF NOT EXISTS farmacia;
USE farmacia;
CREATE TABLE farmacia (
	CNPJ_farmacia NUMERIC(14) PRIMARY KEY,
    nome_farmacia VARCHAR(30) NOT NULL,
    tel_farmacia NUMERIC(13),
    end_farmacia VARCHAR(50)
);

CREATE TABLE produto (
	cod_produto INTEGER PRIMARY KEY,
    valor_produto DECIMAL NOT NULL,
    qtd_produto INTEGER,
    CNPJ_farmacia NUMERIC(14)
);

CREATE TABLE farmaceutico (
	RG_farmaceutico NUMERIC(7) PRIMARY KEY,
    nome_farmaceutico VARCHAR(30) NOT NULL,
    CNPJ_farmacia NUMERIC(14)
);