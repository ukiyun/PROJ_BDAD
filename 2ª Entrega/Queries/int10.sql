.mode columns
.headers on
.nullvalue NULL

--Média de golos por jogo

select avg(golos) as mediaGolos from Jogo where golos is not null 
