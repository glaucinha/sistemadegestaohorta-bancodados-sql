SELECT
I.nome AS Instituicao,
    SUM(D.quantidade_doada) AS 'Total_Doado (kg)'
FROM
    Doacao D
JOIN
    Instituicao I ON D.idInstituicao = I.idInstituicao
GROUP BY
    I.nome -- Agrupa os resultados por nome da instituição
ORDER BY
    'Total_Doado (kg)' DESC;
    