.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Verifica se gatilho 3 funciona

INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (16, 'Portimonense', 16);
DELETE FROM Equipa WHERE idEquipa = 14;
DELETE FROM Equipa WHERE idEquipa = 15;
DELETE FROM Equipa WHERE idEquipa = 16;

SELECT * FROM Equipa;


