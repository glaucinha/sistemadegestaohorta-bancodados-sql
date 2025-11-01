SELECT
E.nome_popular AS Especie_Plantada,
    C.localizacao AS Canteiro,
    V.nome AS Voluntario_Responsavel,
    CU.data_plantio AS Data_Plantio
FROM
    Cultivo CU
JOIN
    Especie_De_Planta E ON CU.idEspecie = E.idEspecie
JOIN
    Canteiro C ON CU.idCanteiro = C.idCanteiro
JOIN
    Voluntario V ON CU.idVoluntario = V.idVoluntario
LEFT JOIN
    Colheita CO ON CU.idCultivo = CO.idCultivo -- Tenta encontrar uma colheita para o cultivo
WHERE
    CO.idColheita IS NULL -- Chave do LEFT JOIN: Filtra onde a colheita não foi encontrada
    AND CU.status = 'Em crescimento';
    
    