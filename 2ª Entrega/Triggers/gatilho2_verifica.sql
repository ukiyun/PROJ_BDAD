.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;


/* verifica se gatilho 2 funciona */

INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (383, 17, 150, 58, 14);
INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (384, -5, 150, 58, 14);
INSERT INTO Golo (idGolo, minuto, jogador, jogo, equipa)  VALUES (385, 70, 150, 58, 14);

SELECT * FROM Golo;