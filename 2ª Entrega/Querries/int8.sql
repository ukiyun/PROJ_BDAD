.mode columns
.headers on
.nullvalue NULL

--Listagem de jogadores com o nome "Pedro" ordenados por data de nascimento

select nome, dataNasc from Jogador
where nome in (select nome from Jogador where nome like 'Pedro%')
order by dataNasc
