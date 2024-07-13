SELECT nome, rua, bairro, cidade, cep from colaboradores
UNION
SELECT nome, rua, bairro, cidade, cep from fornecedores;

SELECT nome, rua, bairro, cidade, cep from colaboradores
UNION ALL
SELECT nome, rua, bairro, cidade, cep from fornecedores;

SELECT nome, telefone 
FROM clientes 
WHERE ID = (
    SELECT idcliente 
    FROM pedidos 
    WHERE datahorapedido = '2023-01-02 08:15:00');
    
SELECt idcliente
from pedidos
WHERE STRFTIME('%m', datahorapedido) = '01';

SELECT nome
from clientes
WHERE id IN (
	SELECT idcliente
  	from pedidos
  	where STRFTIME('%m', datahorapedido) = '01'
);

SELECT AVG(preco) FROM produtos;

SELECT nome, preco
FROM produtos
GROUP BY nome, preco
having preco > (
	SELECT AVG(preco)
  	from produtos
);

SELECT c.nome, p.id, p.datahorapedido
from clientes c
inner JOIN pedidos p
on c.id = p.idcliente;

INSERT INTO Produtos (ID, Nome, Descricao, Preco, Categoria)VALUES 
(31, 'Lasanha à Bolonhesa', 'Deliciosa lasanha caseira com molho bolonhesa', 12.50, 'Almoço');

SELECT pr.nome,  x.idproduto,  x.idpedido 
FROM(
    SELECT ip.idpedido, ip.idproduto
    FROM pedidos p
    JOIN itenspedidos ip 
    ON p.id = ip.idpedido
    WHERE strftime('%m', p.DataHoraPedido) = '10' ) x
RIGHT JOIN produtos pr
ON pr.id =  x.idproduto;
