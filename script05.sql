SELECT
I.nome AS Instituicao,
    SUM(D.quantidade_doada) AS 'Quantidade_Total_Doada (kg)'
FROM
    Doacao D
JOIN
    Instituicao I ON D.idInstituicao = I.idInstituicao
GROUP BY
    I.nome
ORDER BY
    'Quantidade_Total_Doada (kg)' DESC;
    