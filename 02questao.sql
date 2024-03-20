DROP DATABASE IF EXISTS Questao2;
CREATE DATABASE Questao2;
USE Questao2;
DROP TABLE IF EXISTS Competicao;
DROP TABLE IF EXISTS Atletas;
CREATE TABLE Competicao(
    Id INT UNIQUE PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(300),
    Data_criacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    Data_atualizacao TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);
CREATE TABLE Atletas(
    Id INT UNIQUE PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(300) NOT NULL,
    Peso FLOAT(4) NOT NULL,
    Idade INT(3) NOT NULL,
    Competicao INT NOT NULL,
    FOREIGN KEY (Competicao) REFERENCES Competicao(Id)
);