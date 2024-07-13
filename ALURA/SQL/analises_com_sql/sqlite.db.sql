SELECT STRFTIME('%Y/%m', vd.data_venda) as Data, fn.nome as Nome_Fornecedor, COUNT(iv.produto_id) as Qtd_Vendas
FROM itens_venda iv
JOIN vendas vd on vd.id_venda = iv.venda_id
join produtos pd on pd.id_produto = iv.produto_id
JOIN fornecedores fn on fn.id_fornecedor = pd.fornecedor_id
WHERE STRFTIME('%m', vd.data_venda) = '11'
GROUP by Nome_Fornecedor, Data
order by Nome_Fornecedor, Qtd_Vendas DESC;

SELECT Nome_Fornecedor, MIN(Qtd_Vendas) as Quantidade_de_Vendas
FROM (
	SELECT STRFTIME('%Y/%m', vd.data_venda) as Data, fn.nome as Nome_Fornecedor, COUNT(iv.produto_id) as Qtd_Vendas
	FROM itens_venda iv
	JOIN vendas vd on vd.id_venda = iv.venda_id
	join produtos pd on pd.id_produto = iv.produto_id
	JOIN fornecedores fn on fn.id_fornecedor = pd.fornecedor_id
  	WHERE STRFTIME('%m', vd.data_venda) = '11'
	GROUP by Nome_Fornecedor, Data
	order by Nome_Fornecedor
);

SELECT * from itens_venda;

SELECT * from produtos;

SELECT * FROM categorias;

SELECT STRFTIME('%Y', vd.data_venda) as Data, pd.nome_produto as Produto, COUNT(iv.produto_id) as Qtd_Vendas
FROM itens_venda iv
JOIN vendas vd on vd.id_venda = iv.venda_id
JOIN produtos pd on pd.id_produto = iv.produto_id
JOIN categorias ct on ct.id_categoria = pd.categoria_id
WHERE STRFTIME('%m', vd.data_venda) = '11'
GROUP by Data, Produto
ORDER by Data, Qtd_Vendas DESC;
