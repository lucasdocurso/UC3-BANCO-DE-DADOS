
## 6. Atualização de Dados


19. Atualize o preço de um produto na tabela `produtos`.
UPDATE produtos
set preco = 1.000
WHERE IDproduto = 1


20. Atualize o status de um pedido para "Concluído" na tabela `pedidos`.
UPDATE pedidos
set status = "CONCLUÍDO"
WHERE IDpedidos = 1



21. Atualize o telefone de um cliente na tabela `clientes`.
UPDATE clientes
SET telefone = '51 99000000'
WHERE IDclientes = 2
