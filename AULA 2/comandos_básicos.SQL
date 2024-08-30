----COMANDOS BÁSICOS SQL----
==================================CRIANDO A TABELA=======================================================
CREATE TABLE IF NOT EXISTS clientes (
    -- coluna / tipos de dado / restrição
    idClientes INT PRIMARY KEY,
    nome varchar(100),
    telefone varchar(100)
    );
=======================================ALTERANDO TABELA==================================================
ALTER TABLE clientes

===========================ALTERANDO A TABELA E ADICIONANDO UMA NOVA COLUNA============================
ALTER TABLE clientes 
ADD email VARCHAR(100); 

========================ALTERANDO A TABELA E MODIFICANDO O TIPO DE UMA COLUNA==========================
ALTER TABLE clientes 
MODIFY email TEXT; 

========================ALTERANDO A TABELA E RENOMEANDO A COLUNA=======================================
ALTER TABLE clientes
CHANGE COLUMN email emailCliente VARCHAR(255);

===================================APAGANDO A COLUNA====================================================
ALTER TABLE clientes
DROP COLUMN telefone;

============================RENOMEANDO A TABELA==========================================================
ALTER TABLE clientes RENAME TO Clientes

==============================APAGANDO A TABELA==========================================================
DROP TABLE Clientes;

===========================INSERIR DADOS A UMA TABELA====================================================
INSERT IGNORE INTO Clientes(idClientes,nome,emailCliente )
VALUES (1,'Stevão Rodrigues', 'Stevão.rodrigues@gmail.com');

===========================ATUALIZANDO DADOS EM UMA TABELA===============================================
UPDATE Clientes
set emaillCliente = 'novo.email@email.com'
WHERE idClientes = 1; -- Condição

===========================DELETANDO DADOS EM UMA TABELA=================================================
DELETE FROM Clientes
WHERE idClientes = 1;


---CONSULTAS---
===========================CONSULTA SIMPLES: RETORNA TODOS OS DADOS DA TABELA============================
SELECT idClientes, nome, emaillCliente
FROM Clientes;

===========================CONSULTA SIMPLES: PEGANDO DADOS DE DOIS ID====================================
SELECT emailCliente FROM Clientes WHERE idClientes IN (3, 4, 5);

====================================CONSULTA COM ORDENAÇÃO===============================================
SELECT idClientes, nome, emailCliente -- OU (*) ACIONA TODA A COLUNA
FROM Clientes
ORDER BY nome ASC; -- OU DESC

================CONSULTA COM FILTRO E RETORNA DADOS ORDENADOS COM BASE NA CONDICÃO=======================
SELECT nome
FROM clientes
WHERE idClientes = "severo.rodrigues@gmail.com"
ORDER BY nome DESC;


==================================CONSULTA COM LIMTE DE RESULTADOS=======================================
SELECT idClientes, nome, emailCliente
FROM Clientes
LIMIT 3;


==================================CONSULTA DE VALORES ÚNICOS=============================================
SELECT DISTINCT emailCliente
FROM Clientes;

==================================TABELA COM CHAVE ESTRANGEIRA===========================================
CREATE TABLE Pedidos (
    idPedidos INT AUTO_INCREMENT PRIMARY KEY,
    idClientes INT,
    numePedido VARCHAR(50),
    valorTotal DECIMAL (10, 2),
    dataPedido DATE,
    FOREIGN KEY (idClientes) REFERENCES Clientes(idClientes)
    );
===============================CONSULTA COM A FUNÇÃO SUM======================================================
SELECT SUM(valorTotal) AS Total
FROM Pedidos;
-- SOMA O VALOR TOTAL DE PEDIDOS
===============================CONSULTA COM A FUNÇÃO AVG======================================================
SELECT AVG(valorTotal) AS valor_medio_pedidos
FROM Pedidos;
-- CALCULA OS VALORES MÉDIO DOS PEDIDOS
===============================CONSULTA COM A FUNÇÃO MAX======================================================
SELECT MAX(numeroPedido) AS pedido_com_numero_mais_alto
FROM Pedidos;
-- ENCONTRA O PEDIDO COM O NÚMERO MAIS ALTO EM ORDEM ALFABÉTICA 
===============================CONSULTA COM A FUNÇÃO MIN=====================================================
SELECT MIN(numeroPedido) AS pedido_com_numero_mais_BAIXO
FROM Pedidos;
-- ENCONTRA O PEDIDO COM O NÚMERO MAIS BAIXO EM ORDEM ALFABÉTICA 
==============================CONSULTA COM JUNÇÃO DE TABELAS(JOIN)===========================================
SELECT Clientes.clientesID,Clientes.nome,Clientes.emailCliente,Pedidos.numeroPedido
FROM Clientes
INNER JOIN Pedidos ON Clientes.clientesID = Pedidos.clientesID
-- SELECIONA ""CLIENTES" E SEUS PEDIDOS CORRESPONDENTES USANDO UMA JUNÇÃO ENTRE A TABELA """"CLIENTES" E "PEDIDOS". NESTE
-- EXEMPLO, "INNER JOIN" COMBINA REGISTROS DE AMBAS AS TABELAS ONDEM EXISTEM CORRESPONDÊNCIAS ENTRE OS CAMPOS "CLIENTESID"
==============================CONSULTA COM JUNÇÃO EXTERNA(LEFT JOIN)===========================================
SELECT Clientes.clientesID,Clientes.nome,Pedidos.numeroPedido 
FROM Clientes 
LEFT JOIN Pedidos ON Clientes.clientesID = Pedidos.clientesID
-- SELECIONA TODOS OS "CLIENTES" INCLUINDO AQUELES QUE NÃO TEM PEDIDOS CORRESPONDENTES "LEFT JOIN" RETORNA TODOS OS REGISTROS
-- DA TABELA A ESQUERDA(CLIENTES), E OS REGISTROS CORRESPONDENTES DA TABELA A DIREITA(PEDIDOS), SE NÃP HPUVER CORRESPONDENCIA,SÃO RETORNADAS "NULLs" PARA OS CAMPOS DA TABELA A DIREITA
===============================CONSULTA COM JUNÇÃO CONDICIONAL(JOIN COM WHERE)===================================
SELECT Clientes.clientesID,Clientes.nome,Pedidos.numeroPedido,Pedidos.valorTotal
FROM Clientes
WHERE Pedidos.valorTotal > 200
INNER JOIN Pedidos ON Clientes.clientesID = Pedidos.clientesID
--

===============================CONSULTA COM FUNÇÃO COUNT=========================================================
SELECT COUNT(*)
FROM Pedidos;
-- CONTA O NÚMERO TOTAL DE PEDIDOS
==========================================EXERCICIOS DE SQL======================================================
1) Escreva uma consulta SQL para selecionar o departamento_id e a soma dos salários para cada departamento. Filtre os departamentos onde a soma total dos salários é maior que R$ 12.000,00.

RESPOSTA:
SELECT departamento_id, SUM(salario) AS total_salario
FROM cargos
GROUP BY departamento_id
HAVING SUM(salario) > 12000.00;



2) Escreva uma consulta SQL para selecionar o titulo e o número de empregados para cada título. Filtre os títulos onde há mais de 2 empregados.

RESPOSTA:
SELECT titulo, COUNT(empregados_id) AS numero_empregados
FROM empregados
GROUP BY titulo
HAVING COUNT(empregados_id) > 2;


3) Escreva uma consulta SQL para selecionar o departamento_id e a média dos salários para cada departamento. Filtre os departamentos onde a média salarial é maior que R$ 4.500,00.

RESPOSTA:
SELECT departamento_id, AVG(salario) AS media_salario
FROM cargos
GROUP BY departamento_id
HAVING AVG(salario) > 4500.00;


4) Escreva uma consulta SQL para selecionar o departamento_id e o maior salário para cada departamento. Filtre os departamentos onde o maior salário é superior a R$ 6.000,00.

RESPOSTA:
SELECT departamento_id, MAX(salario) AS maior_salario
FROM cargos
GROUP BY departamento_id
HAVING MAX(salario) > 6000.00;


5) Escreva uma consulta SQL para selecionar o departamento_id e o menor salário para cada departamento. Filtre os departamentos onde o menor salário é superior a R$ 2.500,00.

RESPOSTA:
SELECT departamento_id, MIN(salario) AS menor_salario
FROM cargos
GROUP BY departamento_id
HAVING MIN(salario) > 2500.00;

=======================================================================================================================================
