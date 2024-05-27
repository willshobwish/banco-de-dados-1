use BancoDeDadosPedidos;

select * from cliente;

SELECT
    cod_cliente as codigo,
    nome_cliente as nome,
    endereco_cliente as endereco
from cliente;

SELECT nome_cliente as nome from cliente where uf_cliente = "sp";

SELECT COUNT(nome_cliente) from cliente where uf_cliente = 'sp';

SELECT cidade_cliente, COUNT(*)
from cliente
GROUP BY
    cidade_cliente
ORDER BY COUNT(*);

SELECT * from cliente;

SELECT * from produto;