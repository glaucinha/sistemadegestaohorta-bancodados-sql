# 🌱 Sistema de Gestão da Horta Comunitária *Verde Viva*

## 🧩 Visão Geral
O sistema de banco de dados **Horta Verde Viva** foi desenvolvido para **organizar e acompanhar o funcionamento de uma horta comunitária**, controlando:
- o trabalho dos **voluntários**,
- o uso dos **canteiros**,
- o cultivo das **espécies de plantas**
- - o registro das **colheitas**,
- e o destino das **doações** realizadas para instituições parceiras.

O banco segue um modelo **relacional normalizado**, garantindo integridade entre as entidades principais:
`Voluntario`, `Canteiro`, `Especie_de_Planta`, `Cultivo`, `Colheita`, `Doacao` e `Instituicao`.

---

🧱 Resumo das Entidades
- **Voluntario:** registra as pessoas que atuam na horta e suas funções.  
- **Canteiro:** representa os espaços de plantio, com área, localização e status de uso.  
- **Especie_de_Planta:** armazena informações sobre as espécies cultivadas (nome, ciclo, tempo médio de colheita).  
- **Cultivo:** relaciona voluntários, canteiros e espécies, registrando a data e quantidade plantada.  
- **Colheita:** registra os resultados dos cultivos, como quantidade colhida, qualidade e destino.  
- **Doacao:** controla as entregas das colheitas para instituições.  
- **Instituicao:** guarda os dados das entidades que recebem doações.  


💡 Principais Consultas e Seus Propósitos

| Consulta SQL | Propósito |
|---------------|------------|
| `SELECT * FROM Voluntario;` | Lista todos os voluntários e suas funções cadastradas. |
| `SELECT ca.identificacao, e.nome_popular, cu.data_plantio FROM Cultivo cu ...` | Mostra as plantas cultivadas em cada canteiro, com data de plantio. |
| `SELECT v.nome, e.nome_popular FROM Voluntario v ...` | Exibe quais voluntários cultivaram cada espécie. |
| `SELECT ca.identificacao, c.quantidade_colhida FROM Colheita c ...` | Mostra todas as colheitas realizadas, com o canteiro e a quantidade colhida em kg. |
| `SELECT ... LEFT JOIN ... WHERE co.idColheita IS NULL;` | Lista os canteiros que ainda **não tiveram colheita**. |
| `SELECT v.nome, COUNT(cu.idCultivo) ... ORDER BY ...` | Mostra qual voluntário realizou **o maior número de cultivos**. |
| `SELECT e.nome_popular FROM Especie_de_Planta e ... WHERE co.idColheita IS NULL;` | Identifica as **espécies que ainda não foram colhidas**. |

---

# 🌾 Conclusão
O banco de dados da *Horta Verde Viva* oferece uma base sólida para o **gerenciamento sustentável da produção comunitária**, permitindo acompanhar o ciclo completo — do plantio à doação — e apoiar decisões sobre produtividade, voluntariado e impacto social.



