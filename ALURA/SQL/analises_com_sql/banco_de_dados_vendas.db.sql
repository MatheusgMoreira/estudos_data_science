SELECT * from categorias;

SELECT COUNT(*) from produtos;

SELECT COUNT(*) from vendas;

SELECT COUNT(*) as Qtd, 'Categorias' as Tabela FROM categorias
UNION ALL
SELECT COUNT(*) as Qtd, 'Clientes' as Tabela FROM clientes
UNION ALL
SELECT COUNT(*) as Qtd, 'Fornecedores' as Tabela FROM fornecedores
UNION ALL
SELECT COUNT(*) as Qtd, 'ItensVenda' as Tabela FROM itens_venda
UNION ALL
SELECT COUNT(*) as Qtd, 'Marcas' as Tabela FROM marcas
UNION ALL
SELECT COUNT(*) as Qtd, 'Produtos' as Tabela FROM produtos
UNION ALL
SELECT COUNT(*) as Qtd, 'Vendas' as Tabela FROM vendas;

SELECT nome_produto, MAX(preco), MIN(preco)
FROM produtos
GROUP by nome_produto;

update produtos
set preco = 100
WHERE nome_produto = 'Bola de Futebol' And preco > 100;

update produtos
set preco = 50
WHERE nome_produto = 'Chocolate' And preco > 50;

update produtos
set preco = (
	SELECT AVG(preco)
    from produtos
    where nome_produto = 'Camisa'
  )
WHERE nome_produto = 'Camisa' and preco < 80;