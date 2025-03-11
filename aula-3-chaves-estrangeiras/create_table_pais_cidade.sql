CREATE DATABASE IF NOT EXISTS cidade_pais;
USE cidade_pais;
DROP TABLE IF EXISTS cidade;
DROP TABLE IF EXISTS pais;
CREATE TABLE pais (
    id_pais INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL
);

CREATE TABLE cidade (
    id_cidade INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    id_pais INT,
    FOREIGN KEY (id_pais) REFERENCES pais(id_pais) ON DELETE restrict
);


INSERT INTO pais VALUES (1, 'Brasil'), (2, 'Suécia'), (3, 'Japão');
INSERT INTO cidade VALUES (1, 'Brasília', 1), (2, 'Pirenópolis', 1), (3, 'Tóquio', 3), (4, 'Gotemburgo', 2);