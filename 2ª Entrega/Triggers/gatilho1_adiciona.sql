.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

-- Gatilho que verifica se o nome da equipa é válido

CREATE TRIGGER valida_equipa
BEFORE INSERT ON Equipa
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Equipa inválida')
    WHERE NEW.nome IS NULL OR NEW.nome = ''; 
END;
