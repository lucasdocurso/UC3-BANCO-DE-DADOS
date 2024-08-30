
DELIMITER //

CREATE PROCEDURE AumentarSalario(
    IN dep_id INT,
    IN percentual DECIMAL(5,2)
)
BEGIN
UPDATE cargos
SET salario = salario + (salario * (percentual/100))
WHERE departamento_id = dep_id;
END //
DELIMITER ;
==================================================CHAMAR PROCEDIMENTO============================================================
CALL AumentarSalario(1,10);
==================================================EXCLUIR PROCEDIMENTO===========================================================
DROP

DELIMITER //
CREATE PROCEDURE NovoEmpregado(
    ADD NovoEmpregado
    IN empregado_id
    FROM empregados
)
END //
DELIMITER //