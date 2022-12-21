.mode columns
.headers on
.nullvalue NULL

--Listagem de Equipas em risco de relegação (últimas 3 classificadas)

select nome from Equipa
order by classificação desc limit 3
