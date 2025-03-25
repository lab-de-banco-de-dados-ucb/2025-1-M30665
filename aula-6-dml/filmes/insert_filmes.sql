-- DROP DATABASE filmes;
-- CREATE DATABASE filmes;
USE filmes;

INSERT INTO Pais (Nome) VALUES 
('EUA'),
('Brasil'),
('França'),
('Alemanha'),
('Inglaterra'),
('Canadá'),
('Irlanda'),
('Japão'),
('Áustria');

INSERT INTO Diretor (Nome, IDPais, DataNascimento)
VALUES 
('Robert Zemeckis', 1, '1951-05-14'),
('Richard Linklater', 1, '1960-07-30'),
('Steven Spielberg', 1, '1946-12-18'),
('Christopher Nolan', 5, '1970-07-30'),
('Wim Wenders', 4, '1945-08-14'),
('Denis Villeneuve', 6, '1967-10-03'),
('Quentin Tarantino', 1, '1963-03-27'),
('Sian Heder', 1, '1977-06-23'),
('Larry Charles', 1, '1956-02-20'),
('Fernando Meirelles', 2, '1955-11-09');

INSERT INTO Genero (NomeGenero)
VALUES 
('Drama'),
('Romance'),
('Guerra'),
('Biografia'),
('Ficção Científica'),
('Ação'),
('Comédia'),
('Musical'),
('Aventura'),
('Crime');

INSERT INTO Ator (Nome, IDPais, DataNascimento)
VALUES 
('Tom Hanks', 1, '1956-07-09'),
('Robin Wright', 1, '1966-04-08'),
('Ethan Hawke', 1, '1970-11-06'),
('Julie Delpy', 3, '1969-12-21'),
('Matt Damon', 1, '1970-10-08'),
('Leonardo DiCaprio', 1, '1974-11-11'),
('Cillian Murphy', 7, '1976-05-25'),
('Ryan Gosling', 6, '1980-11-12'),
('Amy Adams', 1, '1974-08-20'),
('Brad Pitt', 1, '1963-12-18'),
('Christoph Waltz', 9, '1956-10-04'),
('Sacha Baron Cohen', 5, '1971-10-13'),
('Riley Keough', 1, '1989-05-29'),
('Alice Braga', 2, '1983-04-15'),
('Kōji Hashimoto', 8, '1956-01-01'),
('Emilia Jones', 5, '2022-02-23');

INSERT INTO Filme (Titulo, AnoLancamento, Classificacao, Sinopse, DuracaoFilme)
VALUES 
('Forrest Gump', 1994, 8.8, 'Um homem com baixo QI relembra os momentos mais importantes de sua vida.', 142),
( 'Antes do Amanhecer', 1995, 8.1, 'Dois estranhos se encontram em um trem e passam uma noite juntos em Viena.', 101),
( 'O Resgate do Soldado Ryan', 1998, 8.6, 'Durante a Segunda Guerra Mundial, um grupo de soldados americanos vai atrás das linhas inimigas para resgatar um paraquedista.', 169),
( 'Oppenheimer', 2023, 8.9, 'A história de J. Robert Oppenheimer e a criação da bomba atômica.', 180),
( 'Dias Perfeitos', 2023, 7.6, 'Um homem que trabalha como limpador em Tóquio embarca em uma jornada reflexiva.', 123),
( 'A Chegada', 2016, 7.9, 'Uma linguista trabalha para se comunicar com visitantes extraterrestres.', 116),
( 'Bastardos Inglórios', 2009, 8.3, 'Na França ocupada pelos nazistas, um grupo de soldados judeus planeja assassinar líderes nazistas.', 153),
( 'No Ritmo do Coração', 2021, 8.0, 'Uma jovem de uma família surda descobre sua paixão pela música.', 111),
( 'Borat', 2006, 7.3, 'Um jornalista do Cazaquistão viaja para a América para fazer um documentário.', 84),
( 'Cidade de Deus', 2002, 8.6, 'A história do crime e da violência no Rio de Janeiro.', 130);

INSERT INTO FilmePais (IDFilme, IDPais)
VALUES
(1, 1),  -- Forrest Gump (EUA)
(2, 9),  -- Antes do Amanhecer (Áustria)
(3, 1),  -- O Resgate do Soldado Ryan (EUA)
(4, 1),  -- Oppenheimer (EUA)
(5, 8),  -- Dias Perfeitos (Japão)
(6, 1),  -- A Chegada (EUA)
(7, 3),  -- Bastardos Inglórios (França)
(7, 4),  -- Bastardos Inglórios (Alemanha)
(8, 6),  -- No Ritmo do Coração (Canadá)
(9, 1),  -- Borat (EUA)
(10, 2); -- Cidade de Deus (Brasil)



INSERT INTO Premio (NomePremio)
VALUES 
('Oscar'),
('Golden Globe'),
('BAFTA'),
('Cannes');

INSERT INTO EdicaoPremio (IDPremio, AnoEdicao, NomeEdicao)
VALUES
(1, 1995, 'Oscar 1995'),
(1, 2010, 'Oscar 2010'),
(1, 2024, 'Oscar 2024'),
(2, 1995, 'Golden Globe 1995'),
(2, 2010, 'Golden Globe 2010'),
(2, 2024, 'Golden Globe 2024'),
(3, 1995, 'BAFTA 1995'),
(3, 2010, 'BAFTA 2010'),
(3, 2024, 'BAFTA 2024'),
(4, 1995, 'Cannes 1995'),
(4, 2010, 'Cannes 2010'),
(4, 2024, 'Cannes 2024');


INSERT INTO CategoriaPremio (IDEdicaoPremio, NomeCategoria, IDAtor)
VALUES
(1, 'Melhor Ator', 1),  -- Oscar 1995 - Tom Hanks
(4, 'Melhor Atriz', 2), -- Golden Globe 1995 - Robin Wright
(7, 'Melhor Ator', 3),  -- BAFTA 1995 - Ethan Hawke
(10, 'Melhor Diretor', NULL),  -- Cannes 1995 - Sem ator associado
(2, 'Melhor Ator', 10), -- Oscar 2010 - Brad Pitt
(5, 'Melhor Atriz', 9), -- Golden Globe 2010 - Amy Adams
(8, 'Melhor Ator Coadjuvante', 11), -- BAFTA 2010 - Christoph Waltz
(11, 'Prêmio Especial do Júri', NULL), -- Cannes 2010 - Sem ator associado
(3, 'Melhor Ator', 7), -- Oscar 2024 - Cillian Murphy
(6, 'Melhor Atriz', 16), -- Golden Globe 2024 - Emilia Jones
(9, 'Melhor Ator Coadjuvante', 12), -- BAFTA 2024 - Sacha Baron Cohen
(12, 'Palma de Ouro', NULL); -- Cannes 2024 - Sem ator associado


INSERT INTO FilmeDiretor (IDFilme, IDDiretor)
VALUES 
(1, 1),  -- Forrest Gump
(2, 2),  -- Antes do Amanhecer
(3, 3),  -- O Resgate do Soldado Ryan
(4, 4),  -- Oppenheimer
(5, 5),  -- Dias Perfeitos
(6, 6),  -- A Chegada
(7, 7),  -- Bastardos Inglórios
(8, 8),  -- No Ritmo do Coração
(9, 9),  -- Borat
(10, 10); -- Cidade de Deus



INSERT INTO FilmeGenero (IDFilme, IDGenero)
VALUES 
(1, 1), -- Forrest Gump (Drama)
(2, 2), -- Antes do Amanhecer (Romance)
(3, 3), -- O Resgate do Soldado Ryan (Guerra)
(4, 4), -- Oppenheimer (Biografia)
(5, 1), -- Dias Perfeitos (Drama)
(6, 5), -- A Chegada (Sci-Fi)
(7, 6), -- Bastardos Inglórios (Ação)
(8, 1), -- No Ritmo do Coração (Drama)
(9, 7), -- Borat (Comédia)
(10, 10); -- Cidade de Deus (Crime)



-- Forrest Gump
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(1, 1),  -- Tom Hanks
(1, 2);  -- Robin Wright

-- Antes do Amanhecer
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(2, 3),  -- Ethan Hawke
(2, 4);  -- Julie Delpy

-- O Resgate do Soldado Ryan
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(3, 1),  -- Tom Hanks
(3, 5);  -- Matt Damon

-- Oppenheimer
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(4, 8);  -- Cillian Murphy

-- Dias Perfeitos
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(5, 15); -- Kōji Hashimoto 

-- A Chegada
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(6, 9); -- Amy Adams

-- Bastardos Inglórios
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(7, 11), -- Christoph Waltz
(7, 10); -- Brad Pitt

-- No Ritmo do Coração
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(8, 16); -- Emilia Jones

-- Borat
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(9, 12); -- Sacha Baron Cohen

-- Cidade de Deus
INSERT INTO FilmeAtor (IDFilme, IDAtor)
VALUES 
(10, 14); -- Alice Braga