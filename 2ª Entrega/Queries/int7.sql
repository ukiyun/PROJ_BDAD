.mode columns
.headers on
.nullvalue NULL

--Listagem de jogadores cujo nome contém "X" ordenados por nome do jogador

select nome from Jogador
where nome like '%X%'
order by nome


