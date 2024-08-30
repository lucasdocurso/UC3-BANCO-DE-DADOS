
## 3. Inserção de Dados


6. Insira pelo menos 5 registros na tabela `clientes`.
INSERT IGNORE INTO clientes (nome,email,telefone,data_cadastro,IDclientes) VALUES
("Lucas Machado Florão","lucasmachadoflorao@gmail.com","51995867931",2024-06-12,1),
("Stevão Rodrigues","stevaorodrigues@gmail.com","51996878032",2023-05-11,2),
("Leandro Santos Guariniri","leandrosantosguariniri","997888133",2022-04-10,3),
("Pedro Henrique","pedrohenrique@gmail.com","51998888234",2021-03-09,4),
("Matheus Mattos","matheusmattos@gmail.com","51999898335",2020-02-08,4);


7. Insira pelo menos 5 registros na tabela `produtos`.
INSERT INTO produtos(IDproduto,nome,descricao,preco,estoque) VALUES
(1,"VANS knu skool","Tênis de skate produzido pela VANS",699.99,12),
(2,"NIKE dunk SB","Tênis de skate produzido pela NIKE",999.99,5),
(3,"QIX chorão","Tênis de skate produzido pela QIX",449.90,2),
(4,"HOCKS pop lite","Tênis de skate produzido pela HOCKS",329.49,0),
(5,"NEW BALANCE 550","Tênis basico produzido pela NEW BALANCE",550.00,2);


8. Insira pelo menos 4 registros na tabela `pedidos` com clientes diferentes.
INSERT IGNORE INTO pedidos VALUES 
(10,1,2021-04-15,"em andamento"),
(11,2,2022-05-16,"em andamento"),
(12,3,2023-06-17,"em análise"),
(13,4,2024-08-18,"no estoque"),
(14,5,2025-09-19,"em análise");


9. Insira pelo menos 4 registros na tabela `itens_pedido` associando pedidos e produtos.
INSERT IGNORE INTO itens_pedido VALUES 
(20,10,1,1000),
(21,11,2,2000),
(22,12,3,3000),
(23,13,4,4000),
(24,14,5,5000);
