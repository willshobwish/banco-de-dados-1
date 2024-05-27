DROP DATABASE BancoDeDadosPedidos;
CREATE DATABASE IF NOT EXISTS BancoDeDadosPedidos;
USE BancoDeDadosPedidos;
CREATE TABLE vendedor (
    cod_vendedor INTEGER PRIMARY KEY NOT NULL,
    nome_vendedor VARCHAR(15) NOT NULL,
    salario_vendedor INTEGER NOT NULL,
    comissao_vendedor CHAR NOT NULL
);
CREATE TABLE IF NOT EXISTS cliente (
    cod_cliente INTEGER PRIMARY KEY NOT NULL,
    nome_cliente VARCHAR (50) NOT NULL,
    endereco_cliente VARCHAR(50) NOT NULL,
    cidade_cliente VARCHAR(50) NOT NULL,
    cidade_cep VARCHAR(30) NOT NULL,
    uf_cliente VARCHAR(2) NOT NULL,
    cgc_cliente VARCHAR(30) NOT NULL,
    ie_cliente VARCHAR(4) NULL
);
CREATE TABLE produto (
    cod_produto INTEGER PRIMARY KEY NOT NULL,
    unidade_produto VARCHAR(3) NOT NULL,
    desc_produto VARCHAR(50) NOT NULL,
    valor_unitario INTEGER(8) NOT NULL
);
CREATE TABLE pedido (
    cod_pedido INTEGER PRIMARY KEY NOT NULL,
    prazo_entrega INTEGER(2) NOT NULL,
    cod_cliente INTEGER(3) NOT NULL,
    cod_vendedor INTEGER(3) NOT NULL,
    CONSTRAINT fk_cod_cliente FOREIGN KEY (cod_cliente) REFERENCES cliente(cod_cliente),
    CONSTRAINT fk_cod_vendedor FOREIGN KEY (cod_vendedor) REFERENCES vendedor(cod_vendedor)
);
CREATE TABLE item_pedido (
    cod_pedido INTEGER(3) NOT NULL,
    cod_produto INTEGER(3) NOT NULL,
    qtd_pedido INTEGER(3) NOT NULL,
    PRIMARY KEY (cod_pedido, cod_produto),
    CONSTRAINT fk_cod_pedido FOREIGN KEY (cod_pedido) REFERENCES pedido(cod_pedido),
    CONSTRAINT fk_cod_produto FOREIGN KEY (cod_produto) REFERENCES produto(cod_produto)
);
INSERT INTO cliente
VALUES (
        720,
        'Ana',
        'Rua 17 n. 19',
        'Niterói',
        '24358310',
        'rj',
        '12113231/0001-24',
        '2134'
    );
INSERT INTO cliente
VALUES (
        870,
        'Flávio',
        'Av. Pres. Vargas 10',
        'São Paulo',
        '22763931',
        'sp',
        '22534126/9387-9',
        '4631'
    );
INSERT INTO cliente
VALUES (
        110,
        'Jorge',
        'Rua Caiapo 131',
        'Curitiba',
        '30078500',
        'pr',
        '14512764/9834-8',
        '0'
    );
INSERT INTO cliente
VALUES (
        222,
        'Lúcia',
        'Rua Itabira 123 Loja 9',
        'Belo Horizonte',
        '22124391',
        'mg',
        '28315213/9348-8',
        '2985'
    );
INSERT INTO cliente
VALUES (
        830,
        'Maurício',
        'Av.  Paulista 1236 sl/2345',
        'São Paulo',
        '3012683',
        'sp',
        '2316985/7465-6',
        '9343'
    );
INSERT INTO cliente
VALUES (
        130,
        'Edmar',
        'Rua da Praia sn/',
        'Salvador',
        '30079300',
        'ba',
        '23463284/234-9',
        '7121'
    );
INSERT INTO cliente
VALUES (
        410,
        'Rodolfo',
        'Largo da Lapa 27 sobrado',
        'Rio de Janeiro',
        '30078900',
        'rj',
        '12835128/2346-6',
        '7431'
    );
INSERT INTO cliente
VALUES (
        20,
        'Beth',
        'Av. Climério n. 45',
        'São Paulo',
        '25679300',
        'sp',
        '32485126/7326-8',
        '9280'
    );
INSERT INTO cliente
VALUES (
        157,
        'Paulo',
        'Tv. Moraes c/3',
        'Lodrina',
        ' ',
        'pr',
        '32848223/324-2',
        '1923'
    );
INSERT INTO cliente
VALUES (
        180,
        'Lívio',
        'Av. Beira Mar n. 1256',
        'Florianópolis',
        '30077500',
        'sc',
        '12736571/2147-4',
        '0'
    );
INSERT INTO cliente
VALUES (
        260,
        'Susana',
        'Rua Lopes Mendes 12',
        'Niterói',
        '30046500',
        'rj',
        '21763571/232-9',
        '2530'
    );
INSERT INTO cliente
VALUES (
        290,
        'Renato',
        'Rua Meireles n. 123 bl.2 sl.245',
        'São Paulo',
        '30225900',
        'sp',
        '13276571/1231-4',
        '1820'
    );
INSERT INTO cliente
VALUES (
        390,
        'Sebastião',
        'Rua da Igreja n. 10',
        'Uberaba',
        '30438700',
        'mg',
        '32176547/213-3',
        '9071'
    );
INSERT INTO produto
VALUES (25, 'KG', 'Queijo', '0.97');
INSERT INTO produto
VALUES (31, 'BAR', 'Chocolate', '0.87');
INSERT INTO produto
VALUES (78, 'L', 'Vinho', '2.00');
INSERT INTO produto
VALUES (22, 'M', 'Linho', '0.11');
INSERT INTO produto
VALUES (30, 'SAC', 'Açúcar', '0.3');
INSERT INTO produto
VALUES (53, 'M', 'Linha', '1.8');
INSERT INTO produto
VALUES (13, 'G', 'Ouro', '6.18');
INSERT INTO produto
VALUES (45, 'M', 'Madeira', '0.25');
INSERT INTO produto
VALUES (87, 'M', 'Cano', '1.97');
INSERT INTO produto
VALUES (77, 'M', 'Papel', '1.05');
insert into vendedor
values (209, 'José', 1800.00, 'C');
insert into vendedor
values (111, 'Carlos', 2490.00, 'A');
insert into vendedor
values (11, 'João', 2780.00, 'C');
insert into vendedor
values (240, 'Antônio', 9500.00, 'C');
insert into vendedor
values (720, 'Felipe', 4600.00, 'A');
insert into vendedor
values (213, 'Jonas', 2300.00, 'A');
insert into vendedor
values (101, 'João', 2650.00, 'C');
insert into vendedor
values (310, 'Josias', 870.00, 'B');
insert into vendedor
values (250, 'Maurício', 2930.00, 'B');
INSERT INTO pedido
VALUES (121, 20, 410, 209);
INSERT INTO pedido
VALUES (97, 20, 720, 101);
INSERT INTO pedido
VALUES (101, 15, 720, 101);
INSERT INTO pedido
VALUES (137, 20, 720, 720);
INSERT INTO pedido
VALUES (148, 20, 720, 101);
INSERT INTO pedido
VALUES (189, 15, 870, 213);
INSERT INTO pedido
VALUES (104, 30, 110, 101);
INSERT INTO pedido
VALUES (203, 30, 830, 250);
INSERT INTO pedido
VALUES (98, 20, 410, 209);
INSERT INTO pedido
VALUES (143, 30, 20, 111);
INSERT INTO pedido
VALUES (105, 15, 180, 240);
INSERT INTO pedido
VALUES (111, 20, 260, 11);
INSERT INTO pedido
VALUES (103, 20, 260, 11);
INSERT INTO pedido
VALUES (91, 20, 260, 11);
INSERT INTO pedido
VALUES (138, 20, 260, 11);
INSERT INTO pedido
VALUES (108, 15, 290, 310);
INSERT INTO pedido
VALUES (119, 30, 390, 250);
INSERT INTO pedido
VALUES (127, 10, 410, 11);
INSERT INTO item_pedido
values (121, 25, 10);
INSERT INTO item_pedido
values (121, 31, 35);
INSERT INTO item_pedido
values (97, 77, 20);
INSERT INTO item_pedido
values (101, 31, 9);
INSERT INTO item_pedido
values (101, 78, 18);
INSERT INTO item_pedido
values (101, 13, 5);
INSERT INTO item_pedido
values (98, 77, 5);
INSERT INTO item_pedido
values (148, 45, 8);
INSERT INTO item_pedido
values (148, 31, 7);
INSERT INTO item_pedido
values (148, 77, 3);
INSERT INTO item_pedido
values (148, 25, 10);
INSERT INTO item_pedido
values (148, 78, 30);
INSERT INTO item_pedido
values (104, 53, 32);
INSERT INTO item_pedido
values (203, 31, 6);
INSERT INTO item_pedido
values (189, 78, 45);
INSERT INTO item_pedido
values (143, 31, 20);
INSERT INTO item_pedido
values (143, 78, 10);
INSERT INTO item_pedido
values (105, 78, 10);
INSERT INTO item_pedido
values (111, 25, 10);
INSERT INTO item_pedido
values (111, 78, 70);
INSERT INTO item_pedido
values (103, 53, 37);
INSERT INTO item_pedido
values (91, 77, 40);
INSERT INTO item_pedido
values (138, 22, 10);
INSERT INTO item_pedido
values (138, 77, 35);
INSERT INTO item_pedido
VALUES (138, 53, 18);
INSERT INTO item_pedido
VALUES (108, 13, 17);
INSERT INTO item_pedido
VALUES (119, 77, 40);
INSERT INTO item_pedido
VALUES (119, 13, 6);
INSERT INTO item_pedido
VALUES (119, 22, 10);
INSERT INTO item_pedido
VALUES (119, 53, 43);
INSERT INTO item_pedido
VALUES (137, 13, 8);
SELECT *
FROM cliente;