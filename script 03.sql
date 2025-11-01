SELECT
v.nome AS 'Voluntário',
  ep.nome_popular AS 'Planta Cultivada'
FROM Cultivo cu
INNER JOIN Voluntario v ON cu.idVoluntario = v.idVoluntario
INNER JOIN Especie_De_Planta ep ON cu.idEspecie = ep.idEspecie
ORDER BY v.nome;
