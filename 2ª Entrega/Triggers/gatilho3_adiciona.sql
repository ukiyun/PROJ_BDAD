.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Gatilho que impede a remoção de uma equipa que tenha jogadores

CREATE TRIGGER removerEquipa
BEFORE DELETE ON Equipa
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Não é possível remover uma equipa que tenha jogadores')
    WHERE EXISTS (SELECT * FROM Jogador WHERE Jogador.idEquipa = OLD.idEquipa);
END;

