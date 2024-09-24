-- Consulta 1: Funcionários Ativos
SELECT id_vendedor AS id, nome, salario
FROM VENDEDORES
WHERE inativo = FALSE
ORDER BY nome ASC;
