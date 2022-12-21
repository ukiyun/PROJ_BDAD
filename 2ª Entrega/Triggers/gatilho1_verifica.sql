.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;


/* verifica se gatilho 1 funciona */

INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (1, 'Portimonense', 1);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (2, NULL, 2);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (3, '', 3);

SELECT * FROM Equipa;





