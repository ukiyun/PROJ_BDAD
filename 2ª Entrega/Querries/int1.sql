.mode columns        
.headers on
.nullvalue NULL

--Listagem de todas as equipas no campeonato e sua classificação, ordenadas por classificação

select nome, classificação from Equipa
order by classificação

