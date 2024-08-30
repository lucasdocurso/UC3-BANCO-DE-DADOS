-- Funções retornam um único valor e são usadas dentro de consultas. Elas não modificam diretamente o estado do banco de dados.
-- Uso: Em consultas SELECT, WHERE, HAVING, etc.

---------------------------FUNÇÃO QUE RETORNA O SALARIO DE UM EMPREGADO------------------------------------------------------------ 
USE empresa;

DELIMITER //

CREATE FUNCTION CalcularSalarioBruto(
    emp_id INT
)
RETURNS DECIMAL(10,2)
BEGIN
    DECLARE salario1 DECIMAL(10,2);

    -- Obtém o salário do cargo do empregado com o ID fornecido
    SELECT cargos.salario 
    INTO salario1
    FROM empregados
    JOIN cargos ON empregados.titulo = cargos.titulo AND empregados.departamento_id = cargos.departamento_id
    WHERE empregados.empregados_id = emp_id;

    -- Retorna o salário
    RETURN salario1;
END //

DELIMITER ;
----------------------------------------------------------------------------------------------------------------------------------------
----------------------------------------Consultando o Salário Bruto de um Empregado-----------------------------------------------------
SELECT nome, CalcularSalarioBruto(empregados_id) AS salario_bruto
FROM empregados
WHERE empregados_id = 1;
----------------------------------------------------------------------------------------------------------------------------------------
------------------------------------------------------EXERCICIOS------------------------------------------------------------------------
1️⃣ Função para Calcular Salário Anual
Desafio: Crie uma função que, dado o ID de um cargo, retorne o salário anual correspondente ao cargo.

2️⃣ Função para Contar Empregados por Departamento
Desafio: Crie uma função que, dado o ID de um departamento, retorne o número de empregados que trabalham nesse departamento.

3️⃣ Função para Obter Nome do Departamento
Desafio: Crie uma função que, dado o ID de um departamento, retorne o nome do departamento.

4️⃣ Função para Obter Título do Empregado
Desafio: Crie uma função que, dado o ID de um empregado, retorne o título do cargo desse empregado.

5️⃣ Função para Calcular Salário Total de um Departamento
Desafio: Crie uma função que, dado o ID de um departamento, retorne o salário total de todos os empregados desse departamento.-