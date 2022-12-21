.mode columns
.headers on
.nullvalue NULL

PRAGMA foreign_keys = ON;

--Gatilho para verificar se minuto do golo é válido

CREATE TRIGGER minutos_validos
BEFORE INSERT ON Golo
FOR EACH ROW
BEGIN
    SELECT RAISE(ABORT, 'Minuto inválido')
    WHERE NEW.minuto < 0 OR NEW.minuto > 50;
END;