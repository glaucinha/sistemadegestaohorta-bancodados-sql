SELECT
    C.localizacao AS Canteiro,
    E.nome_popular AS Planta_Cultivada,
    CU.data_plantio AS Data_Plantio
FROM
    Cultivo CU
JOIN
    Canteiro C ON CU.idCanteiro = C.idCanteiro
JOIN
    Especie_De_Planta E ON CU.idEspecie = E.idEspecie
LEFT JOIN
    Colheita CO ON CU.idCultivo = CO.idCultivo