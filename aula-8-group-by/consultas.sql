SELECT pais, count(pontoturistico.IDCidade) as numPontosTuristicos
FROM cidade
LEFT JOIN pontoturistico
ON cidade.IDCidade = pontoturistico.IDCidade
GROUP BY 1
HAVING count(pontoturistico.IDCidade) = 0;



SELECT cidade.nome, MIN(PontoTuristico.nome) as nomePontoTuristico
FROM cidade
JOIN PontoTuristico
ON cidade.IDCidade = PontoTuristico.IDCidade
GROUP BY 1