.mode columns
.headers on
.nullvalue NULL

--Listagem de jogadores que jogam na equipa "Sporting" ordenados por idade decrescente

select nome from Jogador where Equipa.nome = 'Sporting CP'
order by dataNasc desc

