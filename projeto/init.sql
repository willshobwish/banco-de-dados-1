DROP DATABASE IF EXISTS projeto;

CREATE DATABASE projeto;

USE projeto;

CREATE TABLE departamento (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    acronimo varchar(255)
);

CREATE TABLE area_do_conhecimento (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255)
);

CREATE TABLE evento (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    edicao INT
);

CREATE TABLE escola (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    endereco VARCHAR(255)
);

CREATE TABLE estudante (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    ano INT NOT NULL,
    escola INT NOT NULL,
    FOREIGN KEY (escola) REFERENCES escola (id)
);

CREATE TABLE projeto (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255),
    estudante INT NOT NULL,
    resumo VARCHAR(255),
    area_do_conhecimento INT,
    evento INT,
    FOREIGN KEY (estudante) REFERENCES estudante (id),
    FOREIGN KEY (area_do_conhecimento) REFERENCES area_do_conhecimento (id),
    FOREIGN KEY (evento) REFERENCES evento (id)
);

CREATE TABLE avaliador (
    id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255),
    departamento INT NOT NULL,
    area_do_conhecimento INT NOT NULL,
    FOREIGN KEY (departamento) REFERENCES departamento (id),
    FOREIGN KEY (area_do_conhecimento) REFERENCES area_do_conhecimento (id)
);

CREATE TABLE nota (
    projeto INT,
    avaliador INT,
    nota FLOAT,
    PRIMARY KEY (projeto, avaliador),
    FOREIGN KEY (projeto) REFERENCES projeto (id),
    FOREIGN KEY (avaliador) REFERENCES avaliador (id)
);