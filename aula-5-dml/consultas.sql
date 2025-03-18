SELECT nomeAlbum, anoLancamento from albuns WHERE anoLancamento < 1980;

SELECT nomeMusica, LENGTH(nomeMusica) FROM musicas 
WHERE LENGTH(nomeMusica) <= 5;

SELECT nomeArtista, genero from artistas 
WHERE nacionalidade = 'Brazil';