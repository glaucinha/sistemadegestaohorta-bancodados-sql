SELECT
ca.identificacao AS 'Canteiro',
  ep.nome_popular AS 'Espécie de Planta',
  cu.data_plantio AS 'Data do Plantio'
FROM Cultivo cu
INNER JOIN Canteiro ca ON cu.idCanteiro = ca.idCanteiro
INNER JOIN Especie_De_Planta ep ON cu.idEspecie = ep.idEspecie
ORDER BY ca.identificacao, cu.data_plantio;		
