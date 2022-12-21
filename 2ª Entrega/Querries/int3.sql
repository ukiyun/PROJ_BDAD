.mode columns
.headers on
.nullvalue NULL

--Quantidade de jogadores nascidos depois de 2000

select count(*) as 'Nº de Jogadores' from Jogador where dataNasc > '2000-01-01'
