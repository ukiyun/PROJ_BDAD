.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Verifica se gatilho 3 funciona

-- Inserir novas Equipas vazias
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (15, 'Portimonense', 15);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (16, 'Belenenses', 16);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (17, 'Vitória de Guimarães', 17);


-- Inserir Equipas e Jogadores

INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (18, 'Vitória de Setúbal', 18);
INSERT INTO Jogador (idJogador, nome, dataNasc, equipaJ) VALUES (152, 'João Pedro', '1997-11-01', 18);
INSERT INTO Jogador (idJogador, nome, dataNasc, equipaJ) VALUES (153, 'Miguel Lopes', '2000-07-25', 18);
INSERT INTO Jogador (idJogador, nome, dataNasc, equipaJ) VALUES (154, 'Rafael Pontes', '1996-03-15', 18);

INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (19, 'Rio Ave', 19);
INSERT INTO Jogador (idJogador, nome, dataNasc, equipaJ) VALUES (155, 'Adolfo Marques', '1993-10-30', 19);
INSERT INTO Jogador (idJogador, nome, dataNasc, equipaJ) VALUES (156, 'Tiago Ramos', '2001-04-02', 19);
INSERT INTO Jogador (idJogador, nome, dataNasc, equipaJ) VALUES (157, 'Luis Silva', '1999-12-08', 19);

INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (20, 'Gulpilhares FC', 20);
INSERT INTO Jogador (idJogador, nome, dataNasc, equipaJ) VALUES (158, 'João Pinto', '1995-06-27', 20);
INSERT INTO Jogador (idJogador, nome, dataNasc, equipaJ) VALUES (159, 'Marcos André', '1998-08-12', 20);
INSERT INTO Jogador (idJogador, nome, dataNasc, equipaJ) VALUES (160, 'João Pedro', '1998-10-31', 20);


-- Eliminar Equipas vazias
DELETE FROM Equipa WHERE idEquipa = 15;
DELETE FROM Equipa WHERE idEquipa = 16;
DELETE FROM Equipa WHERE idEquipa = 17;


-- Eliminar Equipas com Jogadores (Inválido)
DELETE FROM Equipa WHERE idEquipa = 18;
DELETE FROM Equipa WHERE idEquipa = 19;
DELETE FROM Equipa WHERE idEquipa = 20;

SELECT * FROM Equipa
ORDER BY classificação;
