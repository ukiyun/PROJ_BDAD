.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;


/* verifica se gatilho 2 funciona */

-- Inserir novos Golos

INSERT INTO Jogo (idJogo, dataHora, resultado, jornada) VALUES (64, "09-12-2022 21:30:00", "4-1", 10);
INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (434, 2, 137, 64, 13);
INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (435, 14, 135, 64, 13);
INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (436, 19, 150, 64, 14);
INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (437, 34, 134, 64, 13);
INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (438, 41, 135, 64, 13);




--Inserir Golos Inválidos
INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (439, -5, 149, 64, 14);
INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (439, 70, 150, 64, 14);

SELECT * FROM Golo;