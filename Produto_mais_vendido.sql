-- Consulta 5: Produto Mais Vendido
SELECT I.id_produto, SUM(I.quantidade) AS quantidade_vendida,
   SUM(I.quantidade * I.preco_praticado) AS total_vendido,
   COUNT(DISTINCT P.id_cliente) AS clientes,
   COUNT(DISTINCT I.id_pedido) AS pedidos
FROM ITENS_PEDIDO I
JOIN PEDIDO P ON I.id_pedido = P.id_pedido
GROUP BY I.id_produto
ORDER BY quantidade_vendida DESC, total_vendido DESC
LIMIT 1;
