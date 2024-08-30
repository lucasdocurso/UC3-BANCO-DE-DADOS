
## 4. Consultas Simples


10. Selecione todos os registros da tabela `clientes`.
SELECT *
FROM clientes


11. Selecione todos os registros da tabela `produtos`.
SELECT *
FROM produtos

12. Selecione todos os registros da tabela `pedidos` e associe-os com o nome do cliente.
SELECT pedidos.*,clientes.nome AS clientes_nome
FROM pedidos
JOIN clientes
ON pedidos.IDclientes = clientes.IDclientes;


13. Selecione todos os registros da tabela `itens_pedido` e associe-os com os detalhes do pedido e do produto.
SELECT itens_pedido.*, pedidos.data_pedido, produtos.nome AS nome
FROM itens_pedido
JOIN pedidos ON itens_pedido.IDpedidos = pedidos.IDpedidos
JOIN produtos ON itens_pedido.IDproduto = produtos.IDproduto;



