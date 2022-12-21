.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;


/* verifica se gatilho 1 funciona */

-- Inserir novas Equipas

INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (15, 'Portimonense', 15);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (16, 'Belenenses', 16);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (17, 'Vitória de Guimarães', 17);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (18, 'Vitória de Setúbal', 18);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (19, 'Rio Ave', 19);

-- Inserir Equipas Inválidas
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (2, NULL, 2);
INSERT INTO Equipa (idEquipa, nome, classificação) VALUES (3, '', 3);


SELECT * FROM Equipa
ORDER BY classificação;






