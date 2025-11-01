SELECT
E.nome_popular AS Especie,
    CO.data_colheita AS Data_da_Colheita,
    CO.quantidade_colhida AS 'Quantidade_Colhida (kg)'
FROM
    Colheita CO
JOIN
    Cultivo CU ON CO.idCultivo = CU.idCultivo
JOIN
    Canteiro C ON CU.idCanteiro = C.idCanteiro
JOIN
    Especie_De_Planta E ON CU.idEspecie = E.idEspecie
ORDER BY
    CO.data_colheita DESC;
    