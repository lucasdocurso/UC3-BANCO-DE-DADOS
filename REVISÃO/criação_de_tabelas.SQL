
----------------------------------------------------------------
1. Crie um banco de dados chamado `revisao_` + seu nome.      --
CREATE TABLE IF NOT EXISTS Clientes (                         --
ID INT PRIMARY KEY AUTO_INCREMENT,                            --
nome TEXT,                                                    --
email TEXT,                                                   --
telefone TEXT,                                                --
data_cadastro DATE                                            --
);                                                            --
----------------------------------------------------------------


## 2. Criação de Tabelas


2. Crie uma tabela chamada `clientes` com as colunas: `id` (inteiro, chave primária, auto-incremento), `nome`
 (texto), `email` (texto), `telefone` (texto), `data_cadastro` (data).
CREATE TABLE IF NOT EXISTS produtos (
    IDproduto INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    descricao TEXT,
    preco DECIMAL,
    estoque INT
    );


3. Crie uma tabela chamada `produtos` com as colunas: `id` (inteiro, chave primária, auto-incremento), `nome` 
(texto), `descricao` (texto), `preco` (decimal), `estoque` (inteiro).
CREATE TABLE IF NOT EXISTS produtos (
    IDproduto INT PRIMARY KEY AUTO_INCREMENT,
    nome TEXT,
    descricao TEXT,
    preco DECIMAL,
    estoque INT
    );


4. Crie uma tabela chamada `pedidos` com as colunas: `id` (inteiro, chave primária, auto-incremento), `id_cliente`
(inteiro, chave estrangeira), `data_pedido` (data), `status` (texto).
CREATE TABLE IF NOT EXISTS pedidos (
    IDpedidos INT PRIMARY KEY AUTO_INCREMENT,
    IDclientes INT,
    FOREIGN KEY(IDclientes) REFERENCES clientes(IDclientes),
    data_pedido DATE,
    status TEXT
    );


5. Crie uma tabela chamada `itens_pedido` com as colunas: `id` (inteiro, chave primária, auto-incremento), `id_pedido` 
(inteiro, chave estrangeira), `id_produto` (inteiro, chave estrangeira), `quantidade` (inteiro), `preco_unitario` (decimal).
CREATE TABLE IF NOT EXISTS itens_pedido (
    IDitens_pedido INT PRIMARY KEY AUTO_INCREMENT,
    IDpedidos INT,
    FOREIGN KEY(IDpedidos) REFERENCES pedidos(IDpedidos),
    IDproduto INT,
    FOREIGN KEY(IDproduto) REFERENCES produtos(IDproduto),
    preco_unitario DECIMAL
    );





