
## 5. Consultas Avançadas


14. Encontre todos os pedidos feitos por um cliente específico.
SELECT *
FROM pedidos
WHERE IDclientes= 1;

    
15. Calcule o total de vendas de cada produto (soma dos preços multiplicados pela quantidade em `itens_pedido`).
SELECT SUM(preco_unitario) AS Total
FROM itens_pedido;


16. Liste os produtos com estoque abaixo de um valor específico.
SELECT IDproduto, nome, preco, descricao, estoque
FROM produtos WHERE produtos.preco < 1200000.00;  


17. Encontre os clientes que realizaram pedidos no último mês.
SELECT IDclientes,IDpedidos,status,data_pedido
FROM  pedidos WHERE pedidos.data_pedido = 2030-01-01;



18. Liste o número total de pedidos realizados por cada cliente.
SELECT COUNT(IDpedidos) AS TOTAL_DE_PEDIDOS
FROM pedidos WHERE IDclientes = 1;




