.mode columns
.headers on
.nullvalue NULL

--Listagem de Equipas cujo nome começa por "S"

select nome from Equipa where nome like 'S%'
