-- Consulta 3: Resumo por Cliente
SELECT C.id_cliente AS id, C.razao_social, COALESCE(SUM(P.valor_total), 0) AS total
FROM CLIENTES C
LEFT JOIN PEDIDO P ON C.id_cliente = P.id_cliente
GROUP BY C.id_cliente
ORDER BY total DESC;
