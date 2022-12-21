.mode columns
.headers on
.nullvalue NULL

--Melhor marcador do campeonato

select nome, sum(golos) as golos from Jogador, Jogo
where Jogador.id = Jogo.id_jogador and Jogo.id_jogador in (select id from Jogador)
group by nome
order by golos desc
limit 1
