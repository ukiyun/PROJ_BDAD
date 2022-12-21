.mode columns
.headers on
.nullvalue NULL

--Média de golos por jogo 

select round(avg(golos), 2) as MEDIA_GOLOS from (select count(*) as golos from Jogo join Golo on Jogo.idJogo = Golo.jogo group by Jogo.idJogo);