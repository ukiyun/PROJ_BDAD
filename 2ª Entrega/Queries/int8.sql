.mode columns
.headers on
.nullvalue NULL

--Listagem de jogadores com o nome "Pedro Mendes" ordenados por data de nascimento

select nome, data_nascimento from Jogador
where nome in (select nome from Jogador where nome = 'Pedro Mendes')
order by dataNasc
