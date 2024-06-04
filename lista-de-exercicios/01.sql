-- Questao 01
CREATE DATABASE pagamento;

USE pagamento;
-- Questao a
DROP TABLE IF EXISTS gerente;

DROP TABLE IF EXISTS empresa;

DROP TABLE IF EXISTS trabalha;

DROP TABLE IF EXISTS funcionario;

CREATE TABLE funcionario (
    nome_funcionario VARCHAR(255) NOT NULL PRIMARY KEY,
    rua VARCHAR(255),
    cidade VARCHAR(255)
);

CREATE TABLE trabalha (
    nome_funcionario VARCHAR(255) NOT NULL PRIMARY KEY,
    nome_empresa VARCHAR(255),
    salario FLOAT,
    CONSTRAINT fknome_funcionario FOREIGN KEY (nome_funcionario) REFERENCES funcionario (nome_funcionario)
);

CREATE TABLE empresa (
    nome_empresa VARCHAR(255) NOT NULL PRIMARY KEY,
    cidade VARCHAR(255)
);

CREATE TABLE gerente (
    nome_funcionario VARCHAR(255) NOT NULL PRIMARY KEY,
    nome_gerente VARCHAR(255),
    CONSTRAINT fknome_funcionario_gerente FOREIGN KEY (nome_funcionario) REFERENCES funcionario (nome_funcionario)
);

-- Questao b
-- Encontre os nomes e cidades de todos os funcionários que trabalham para a empresa “Master”.
-- Insert dummy data into funcionario table
INSERT INTO funcionario (nome_funcionario, rua, cidade) VALUES
('Ana Silva', 'Rua das Flores, 123', 'São Paulo'),
('Bruno Pereira', 'Avenida Brasil, 456', 'Rio de Janeiro'),
('Carlos Souza', 'Rua A, 789', 'Belo Horizonte'),
('Daniela Lima', 'Rua B, 101', 'Curitiba'),
('Eduardo Santos', 'Avenida Central, 202', 'Fortaleza'),
('Fernanda Costa', 'Rua C, 303', 'Porto Alegre'),
('Gustavo Almeida', 'Avenida Atlântica, 404', 'Florianópolis'),
('Helena Oliveira', 'Rua D, 505', 'Salvador'),
('Isabela Fernandes', 'Rua E, 606', 'Recife'),
('João Batista', 'Avenida Paulista, 707', 'São Paulo'),
('Karina Castro', 'Rua F, 808', 'Manaus'),
('Luis Martins', 'Rua G, 909', 'Brasília'),
('Mariana Rocha', 'Avenida Independência, 1010', 'Campinas'),
('Nicolas Ribeiro', 'Rua H, 111', 'Natal'),
('Olivia Duarte', 'Rua I, 222', 'Goiânia');

-- Insert dummy data into empresa table
INSERT INTO empresa (nome_empresa, cidade) VALUES
('Tech Solutions', 'São Paulo'),
('Innovative Designs', 'Rio de Janeiro'),
('Creative Minds', 'Belo Horizonte'),
('Future Vision', 'Curitiba'),
('Global Tech', 'Fortaleza'),
('Next Gen', 'Porto Alegre'),
('High Tech', 'Florianópolis'),
('Digital Dreams', 'Salvador'),
('Visionary Innovations', 'Recife'),
('Tech Giants', 'São Paulo');

-- Insert dummy data into trabalha table
INSERT INTO trabalha (nome_funcionario, nome_empresa, salario) VALUES
('Ana Silva', 'Tech Solutions', 5000.0),
('Bruno Pereira', 'Innovative Designs', 6000.0),
('Carlos Souza', 'Creative Minds', 5500.0),
('Daniela Lima', 'Future Vision', 5800.0),
('Eduardo Santos', 'Global Tech', 6200.0),
('Fernanda Costa', 'Next Gen', 5700.0),
('Gustavo Almeida', 'High Tech', 5900.0),
('Helena Oliveira', 'Digital Dreams', 6100.0),
('Isabela Fernandes', 'Visionary Innovations', 5300.0),
('João Batista', 'Tech Giants', 6500.0),
('Karina Castro', 'Tech Solutions', 5200.0),
('Luis Martins', 'Innovative Designs', 5400.0),
('Mariana Rocha', 'Creative Minds', 5600.0),
('Nicolas Ribeiro', 'Future Vision', 5800.0),
('Olivia Duarte', 'Global Tech', 6000.0);

-- Insert dummy data into gerente table
INSERT INTO gerente (nome_funcionario, nome_gerente) VALUES
('Ana Silva', 'João Batista'),
('Bruno Pereira', 'Carlos Souza'),
('Carlos Souza', 'Daniela Lima'),
('Daniela Lima', 'Eduardo Santos'),
('Eduardo Santos', 'Fernanda Costa'),
('Fernanda Costa', 'Gustavo Almeida'),
('Gustavo Almeida', 'Helena Oliveira'),
('Helena Oliveira', 'Isabela Fernandes'),
('Isabela Fernandes', 'João Batista'),
('João Batista', 'Karina Castro'),
('Karina Castro', 'Luis Martins'),
('Luis Martins', 'Mariana Rocha'),
('Mariana Rocha', 'Nicolas Ribeiro'),
('Nicolas Ribeiro', 'Olivia Duarte'),
('Olivia Duarte', 'Ana Silva');

SELECT * from trabalha where nome_empresa = "Global Tech"; 

-- Questao c
SELECT funcionario.nome_funcionario as nome, rua, cidade, salario from funcionario, trabalha where funcionario.nome_funcionario = trabalha.nome_funcionario and nome_empresa = "Global Tech" and trabalha.salario > 1000;

SELECT funcionario.nome_funcionario as nome, rua, cidade, salario, nome_empresa from funcionario, trabalha where funcionario.nome_funcionario = trabalha.nome_funcionario and nome_empresa != "Global Tech";

SELECT nome_empresa , sum(salario)from trabalha GROUP BY nome_empresa;

SELECT nome_funcionario,nome_empresa, salario from trabalha where salario > (SELECT sum(salario) from trabalha where nome_empresa = "Next Gen");

SELECT nome_empresa, count(nome_funcionario) as numero_funcionario from trabalha GROUP BY nome_empresa ORDER BY numero_funcionario DESC LIMIT 1;