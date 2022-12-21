.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Verifica se gatilho 3 funciona

-- Inserir novas Equipas vazias
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (16, 'Portimonense', 16);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (17, 'Belenenses', 17);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (18, 'Vitória de Guimarães', 18);


-- Inserir Equipas e Jogadores

INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (19, 'Vitória de Setúbal', 19);
INSERT INTO Jogador (idJogador, nome, dataNascimento, equipa) VALUES (151, 'João Pedro', '1997-11-01', 19);
INSERT INTO Jogador (idJogador, nome, dataNascimento, equipa) VALUES (152, 'Miguel Lopes', '2000-07-25', 19);
INSERT INTO Jogador (idJogador, nome, dataNascimento, equipa) VALUES (153, 'Rafael Pontes', '1996-03-15', 19);

INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (20, 'Rio Ave', 20);
INSERT INTO Jogador (idJogador, nome, dataNascimento, equipa) VALUES (154, 'Adolfo Marques', '1993-10-30', 20);
INSERT INTO Jogador (idJogador, nome, dataNascimento, equipa) VALUES (155, 'Tiago Ramos', '2001-04-02', 20);
INSERT INTO Jogador (idJogador, nome, dataNascimento, equipa) VALUES (156, 'Luis Silva', '1999-12-08', 20);

INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (21, 'Gulpilhares FC', 21);
INSERT INTO Jogador (idJogador, nome, dataNascimento, equipa) VALUES (157, 'João Pinto', '1995-06-27', 21);
INSERT INTO Jogador (idJogador, nome, dataNascimento, equipa) VALUES (158, 'Marcos André', '1998-08-12', 21);
INSERT INTO Jogador (idJogador, nome, dataNascimento, equipa) VALUES (159, 'João Pedro', '1998-10-31', 21);


-- Eliminar Equipas vazias
DELETE FROM Equipa WHERE idEquipa = 16;
DELETE FROM Equipa WHERE idEquipa = 17;
DELETE FROM Equipa WHERE idEquipa = 18;


-- Eliminar Equipas com Jogadores (Inválido)
DELETE FROM Equipa WHERE idEquipa = 19;
DELETE FROM Equipa WHERE idEquipa = 20;
DELETE FROM Equipa WHERE idEquipa = 21;

SELECT * FROM Equipa;


