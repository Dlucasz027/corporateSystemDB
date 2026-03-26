SELECT COUNT(*) AS total_servicos
FROM Servico;

SELECT dataAbertura, equipamento, prioridade
FROM OrdemServico
WHERE estado = 'Aberta'
ORDER BY dataAbertura ASC;

SELECT 
    oss.idOrdem,
    s.descricao,
    oss.quantidade,
    oss.valorUnitario,
    (oss.quantidade * oss.valorUnitario) AS subtotal
FROM OrdemServico_Servico oss
JOIN Servico s ON oss.idServico = s.idServico
ORDER BY oss.idOrdem ASC;

SELECT 
    oss.idOrdem,
    SUM(oss.quantidade * oss.valorUnitario) AS total
FROM OrdemServico_Servico oss
GROUP BY oss.idOrdem
ORDER BY total DESC;