DROP DATABASE filmes;
CREATE DATABASE filmes;
USE filmes;

CREATE TABLE `Ator` (
  `IDAtor` INT PRIMARY KEY AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `IDPais` INT NOT NULL,
  `DataNascimento` DATE NOT NULL
);

CREATE TABLE `Diretor` (
  `IDDiretor` INT PRIMARY KEY AUTO_INCREMENT,
  `Nome` VARCHAR(100) NOT NULL,
  `IDPais` INT NOT NULL,
  `DataNascimento` DATE NOT NULL
);

CREATE TABLE `Premio` (
  `IDPremio` INT PRIMARY KEY AUTO_INCREMENT,
  `NomePremio` VARCHAR(50) NOT NULL
);

CREATE TABLE `EdicaoPremio` (
  `IDEdicaoPremio` INT PRIMARY KEY AUTO_INCREMENT,
  `IDPremio` INT NOT NULL,
  `AnoEdicao` YEAR NOT NULL,
  `NomeEdicao` VARCHAR(50) NOT NULL
);

CREATE TABLE `CategoriaPremio` (
  `IDCategoriaPremio` INT PRIMARY KEY AUTO_INCREMENT,
  `IDEdicaoPremio` INT NOT NULL,
  `NomeCategoria` VARCHAR(50) NOT NULL,
  `IDAtor` INT
);

CREATE TABLE `Genero` (
  `IDGenero` INT PRIMARY KEY AUTO_INCREMENT,
  `NomeGenero` VARCHAR(40) NOT NULL
);

CREATE TABLE `Pais` (
  `IDPais` INT PRIMARY KEY AUTO_INCREMENT,
  `Nome` VARCHAR(50) NOT NULL
);

CREATE TABLE `Filme` (
  `IDFilme` INT PRIMARY KEY AUTO_INCREMENT,
  `Titulo` VARCHAR(100) NOT NULL,
  `AnoLancamento` INT,
  `Classificacao` DECIMAL(4,2),
  `Sinopse` TEXT(300),
  `DuracaoFilme` INT
);

CREATE TABLE `FilmeAtor` (
  `IDFilme` INT,
  `IDAtor` INT,
  PRIMARY KEY (`IDFilme`, `IDAtor`)
);

CREATE TABLE `FilmeGenero` (
  `IDFilme` INT,
  `IDGenero` INT,
  PRIMARY KEY (`IDFilme`, `IDGenero`)
);

CREATE TABLE `FilmePais` (
  `IDFilme` INT,
  `IDPais` INT,
  PRIMARY KEY (`IDFilme`, `IDPais`)
);

CREATE TABLE `FilmeDiretor` (
  `IDFilme` INT,
  `IDDiretor` INT,
  PRIMARY KEY (`IDFilme`, `IDDiretor`)
);

ALTER TABLE `Ator` ADD FOREIGN KEY (`IDPais`) REFERENCES `Pais` (`IDPais`);

ALTER TABLE `Diretor` ADD FOREIGN KEY (`IDPais`) REFERENCES `Pais` (`IDPais`);

ALTER TABLE `EdicaoPremio` ADD FOREIGN KEY (`IDPremio`) REFERENCES `Premio` (`IDPremio`);

ALTER TABLE `CategoriaPremio` ADD FOREIGN KEY (`IDEdicaoPremio`) REFERENCES `EdicaoPremio` (`IDEdicaoPremio`);

ALTER TABLE `CategoriaPremio` ADD FOREIGN KEY (`IDAtor`) REFERENCES `Ator` (`IDAtor`);

ALTER TABLE `FilmeAtor` ADD FOREIGN KEY (`IDFilme`) REFERENCES `Filme` (`IDFilme`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `FilmeAtor` ADD FOREIGN KEY (`IDAtor`) REFERENCES `Ator` (`IDAtor`) ON DELETE CASCADE ON UPDATE CASCADE;

ALTER TABLE `FilmeGenero` ADD FOREIGN KEY (`IDFilme`) REFERENCES `Filme` (`IDFilme`);

ALTER TABLE `FilmeGenero` ADD FOREIGN KEY (`IDGenero`) REFERENCES `Genero` (`IDGenero`);

ALTER TABLE `FilmePais` ADD FOREIGN KEY (`IDFilme`) REFERENCES `Filme` (`IDFilme`);

ALTER TABLE `FilmePais` ADD FOREIGN KEY (`IDPais`) REFERENCES `Pais` (`IDPais`);

ALTER TABLE `FilmeDiretor` ADD FOREIGN KEY (`IDFilme`) REFERENCES `Filme` (`IDFilme`);

ALTER TABLE `FilmeDiretor` ADD FOREIGN KEY (`IDDiretor`) REFERENCES `Diretor` (`IDDiretor`);
