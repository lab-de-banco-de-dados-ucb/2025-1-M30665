USE filmes;

-- Aula 5 - Exercícios
 
-- Filmes lançados a partir de 2022
SELECT * FROM filme
WHERE anoLancamento >= 2022;

-- Atores nascidos no Brasil

-- SELECT * FROM pais; -- Brasil => id = 2
-- SELECT ator.Nome, ator.DataNascimento
-- FROM ator WHERE idPais = 2;

SELECT 	ator.Nome, 
		ator.DataNascimento,
        pais.Nome as nomePais
FROM ator
JOIN pais
ON ator.idPais = pais.idPais
WHERE pais.nome = 'Brasil';

-- Diretores nascidos entre 1940 e 1960


SELECT * FROM diretor
WHERE YEAR(dataNascimento) >= 1940
AND YEAR(dataNascimento) <= 1960;

SELECT * FROM diretor
WHERE YEAR(dataNascimento) 
BETWEEN 1940 AND 1960;


-- Aula 6 - Exercícios

-- Filmes com sinopes contendo 'guerra' ou 'paz'

SELECT * FROM filme
WHERE Sinopse LIKE '%guerra%' OR
Sinopse LIKE '%paz%';



-- Atores ordenados pela data de nascimento

SELECT * FROM ator
ORDER BY dataNascimento DESC;



-- Aula 7 - Exercícios

-- Filmes com nome do diretor e gênero
SELECT Titulo, Nome as NomeDiretor, NomeGenero
FROM filme
JOIN filmediretor
ON filme.IDFilme = filmediretor.IDFilme
JOIN diretor
ON filmediretor.IDDiretor = diretor.IDDiretor
JOIN filmegenero
ON filme.IDFilme = filmegenero.IDFilme
JOIN genero
ON filmegenero.IDGenero = genero.IDgenero;

-- Atores sem prêmio
SELECT ator.Nome FROM ator
WHERE IDAtor NOT IN 
(SELECT IDAtor FROM categoriaPremio
WHERE IDAtor is not null);

SELECT *
FROM categoriaPremio
RIGHT JOIN ator
ON ator.IDator = categoriaPremio.IDAtor
WHERE categoriaPremio.IDAtor is NULL;


-- Aula 8 - Exercícios

-- Lista de filmes por ator
SELECT ator.Nome, 
		GROUP_CONCAT(filme.Titulo) as listaFilmes
FROM ator
JOIN filmeator
ON ator.IDAtor = filmeator.IDAtor
JOIN filme
ON filmeator.IDFilme = filme.IDFilme
GROUP BY nome;

-- Nota do maior filme por gênero cadastrado
-- Como incluir coluna "Titulo"?

SELECT  Max(Classificacao) as maiorNota,
		nomegenero
FROM filme
JOIN filmegenero
ON filme.IDFilme = filmegenero.IDFilme
JOIN genero
ON filmegenero.IDGenero = genero.IDGenero
GROUP BY nomegenero;







