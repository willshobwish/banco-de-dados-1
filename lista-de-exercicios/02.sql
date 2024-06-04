CREATE DATABASE viniculas;
USE viniculas;

DROP TABLE IF EXISTS vinho;
DROP TABLE IF EXISTS vinicula;
DROP TABLE IF EXISTS regiao;
CREATE TABLE regiao(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255), 
    descricao VARCHAR(255), 
    mapa VARCHAR(255)   
);
CREATE TABLE vinicula(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    descricao VARCHAR(255),
    fone VARCHAR(255),
    fax VARCHAR(255),
    id_regiao INT NOT NULL,
    FOREIGN KEY (id_regiao) REFERENCES regiao(id)
);

CREATE TABLE vinho(
    id INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nome VARCHAR(255),
    tipo VARCHAR(255),
    ano INT,
    descricao varchar(255),
    id_vinicula INT NOT NULL,
    Foreign Key (id_vinicula) REFERENCES vinicula(id)
);

INSERT INTO regiao (nome, descricao, mapa) VALUES
('Região dos Vinhedos', 'Famosa por suas vinícolas e paisagens deslumbrantes', 'mapa_vinhedos.png'),
('Vale dos Vinhos', 'Conhecida pela produção de vinhos tintos de alta qualidade', 'mapa_vale_vinhos.png'),
('Montanhas do Vinho', 'Região montanhosa com diversas vinícolas familiares', 'mapa_montanhas_vinho.png');

-- Insert dummy data into vinicula table
INSERT INTO vinicula (nome, descricao, fone, fax, id_regiao) VALUES
('Vinícola Santa Rita', 'Uma das vinícolas mais tradicionais da região', '(11) 1234-5678', '(11) 8765-4321', 1),
('Vinícola Bella Vista', 'Conhecida pelos seus vinhos premiados internacionalmente', '(21) 2233-4455', '(21) 5544-3322', 1),
('Vinícola Sol Nascente', 'Especializada em vinhos orgânicos e naturais', '(31) 3344-5566', '(31) 6655-4433', 2),
('Vinícola Vale Verde', 'Famosa por seus vinhos tintos robustos', '(41) 4455-6677', '(41) 7766-5544', 2),
('Vinícola Montanha Azul', 'Pequena vinícola familiar com produção artesanal', '(51) 5566-7788', '(51) 8877-6655', 3),
('Vinícola Caminho do Sol', 'Oferece visitas guiadas e degustações', '(61) 6677-8899', '(61) 9988-7766', 3);

-- Insert dummy data into vinho table
INSERT INTO vinho (nome, tipo, ano, descricao, id_vinicula) VALUES
('Vinho Tinto Reserva', 'Tinto', 2018, 'Um vinho encorpado com notas de frutas vermelhas', 1),
('Vinho Branco Chardonnay', 'Branco', 2020, 'Fresco e frutado, ideal para dias quentes', 1),
('Vinho Rosé Verão', 'Rosé', 2021, 'Leve e refrescante, perfeito para o verão', 2),
('Vinho Tinto Cabernet', 'Tinto', 2019, 'Aromas de amora e toques de carvalho', 2),
('Vinho Espumante Brut', 'Espumante', 2022, 'Borbulhas finas e sabor equilibrado', 3),
('Vinho Tinto Malbec', 'Tinto', 2020, 'Vinho robusto com notas de especiarias', 3),
('Vinho Branco Sauvignon Blanc', 'Branco', 2019, 'Notas cítricas e final refrescante', 4),
('Vinho Tinto Merlot', 'Tinto', 2018, 'Vinho suave com taninos macios', 4),
('Vinho Tinto Syrah', 'Tinto', 2017, 'Notas de pimenta e frutas escuras', 5),
('Vinho Rosé Primavera', 'Rosé', 2021, 'Aromas florais e sabor delicado', 5),
('Vinho Espumante Rosé', 'Espumante', 2022, 'Leve, com notas de morango e cereja', 6),
('Vinho Tinto Pinot Noir', 'Tinto', 2018, 'Elegante e complexo, com final prolongado', 6);

SELECT 