.mode columns
.headers on
.nullvalue NULL

--Melhor marcador do campeonato

select nome, count(*) as golos from Jogador, Golo
where Jogador.idJogador = Golo.jogador
group by Jogador.idJogador, Jogador.nome
order by golos desc limit 1