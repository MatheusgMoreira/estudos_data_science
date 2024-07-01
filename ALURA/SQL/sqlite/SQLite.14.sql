UPDATE tabelaclientes set informacoes_de_contato = 'j.santos@email.com',
endereco_cliente = 'Rua dos paralelepipedos, 30'
where id_cliente = 2;

SELECT * from tabelaclientes;

UPDATE tabelaclientes set endereco_cliente = 'Rua Ulisses Surette, 503'
WHERE id_cliente = 1;