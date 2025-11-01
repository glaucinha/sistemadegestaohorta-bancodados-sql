SELECT
V.nome AS Voluntario,
    COUNT(CU.idCultivo) AS Total_de_Cultivos_Realizados
FROM
    Voluntario V
JOIN
    Cultivo CU ON V.idVoluntario = CU.idVoluntario
GROUP BY
    V.idVoluntario, V.nome -- Agrupa pelo ID e nome do voluntário
ORDER BY
    Total_de_Cultivos_Realizados DESC
    