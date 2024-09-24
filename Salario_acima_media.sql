-- Consulta 2: Funcionários com Salário Acima da Média
SELECT id_vendedor AS id, nome, salario
FROM VENDEDORES
WHERE salario > (SELECT AVG(salario) FROM VENDEDORES)
ORDER BY salario DESC;
