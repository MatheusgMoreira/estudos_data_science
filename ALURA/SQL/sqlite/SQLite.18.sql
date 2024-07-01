create TABLE projetos
(id_projeto int PRIMARY KEY,
 nome_projeto VARCHAR (100),
 id_gerente INT,
 FOREIGN KEY (id_gerente) REFERENCES funcionarios(id)
);

SELECT * from projetos;

DROP TABLE funcionarios;

INSERT INTO projetos (id_projeto, nome_projeto, id_gerente) VALUES (1, 'Projeto A', 2);

SELECT * FROM projetos WHERE id_gerente = 2;

