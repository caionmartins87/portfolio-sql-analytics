-- Receita total
SELECT SUM(valor_total) AS receita_total
FROM vendas;

-- Ticket médio
SELECT AVG(valor_total) AS ticket_medio
FROM vendas;

-- Receita por mês
SELECT 
    DATE_TRUNC('month', data_venda) AS mes,
    SUM(valor_total) AS receita
FROM vendas
GROUP BY mes
ORDER BY mes;

-- Top 10 produtos
SELECT 
    produto,
    SUM(valor_total) AS receita
FROM vendas
GROUP BY produto
ORDER BY receita DESC
LIMIT 10;
