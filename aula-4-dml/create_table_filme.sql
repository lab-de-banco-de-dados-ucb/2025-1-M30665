USE filmes;

CREATE TABLE Filme (
	IDFilme INT PRIMARY KEY AUTO_INCREMENT,
    Titulo VARCHAR(100) NOT NULL,
    AnoLancamento YEAR,
    Classificacao DECIMAL(4,2),
    Sinopse TEXT(300),
    DuracaoFilme INT
);