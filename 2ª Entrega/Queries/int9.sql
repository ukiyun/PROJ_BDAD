.mode columns
.headers on
.nullvalue NULL

--Melhor marcador do campeonato

select count(*) as golos, nome from Jogador
where Jogador.idJogador = Golo.idJogador
group by nome, golos
order by golos desc limit 1
