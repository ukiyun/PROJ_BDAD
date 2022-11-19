.mode columns
.headers on

PRAGMA foreign_keys=OFF;

DROP TABLE IF EXISTS Jornada;
DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS Playoff;
DROP TABLE IF EXISTS Fase;
DROP TABLE IF EXISTS Evento;
DROP TABLE IF EXISTS Golo;
DROP TABLE IF EXISTS Equipa;
DROP TABLE IF EXISTS Jogador;

PRAGMA foreign_keys=ON;

CREATE TABLE Jornada (
    idJornada   INTEGER  PRIMARY KEY,
    dataInicio  DATE     CONSTRAINT unique_jornada_datainicio UNIQUE,            -- "DD-MM-YYYY"
    dataFim     DATE     CONSTRAINT unique_jornada_datafim UNIQUE,               -- "DD-MM-YYYY"
);

CREATE TABLE Jogo (
    idJogo     INTEGER      PRIMARY KEY,
    dataHora   DATETIME     CONSTRAINT nn_jogo_datahora NOT NULL,                                                               -- "DD-MM-YYYY HH:MM:SS"
    resultado  VARCHAR(5)   CONSTRAINT nn_jogo_resultado NOT NULL,                                                               -- "formato = golos1-golos2"
    idEquipa   INTEGER      CONSTRAINT fk_jogo_equipa REFERENCES Equipa (idEquipa),
    idFase     INTEGER      CONSTRAINT fk_jogo_fase REFERENCES Fase (idFase),
);

CREATE TABLE Playoff (
    idPlayoff     INTEGER      PRIMARY KEY,
    data          DATE         CONSTRAINT nn_playoff_data NOT NULL,               -- "DD-MM-YYYY"
    ronda         VARCHAR(30)  CONSTRAINT nn_playoff_ronda NOT NULL,              -- "formato = Quartos de Final ou Meias Finais ou Final"
);

CREATE TABLE Fase (
    idFase     INTEGER     PRIMARY KEY,
    mão        INTEGER     CONSTRAINT nn_fase_mao NOT NULL,
    resultado  VARCHAR(5)  CONSTRAINT nn_fase_resultado NOT NULL,                           -- "Resultado atual do Playoff, atualiza após cada jogo"~
    idPlayoff INTEGER      CONSTRAINT fk_fase_playoff REFERENCES Playoff (idPlayoff),
);

CREATE TABLE Evento (
    idEvento    INTEGER    PRIMARY KEY,
    idJogo      INTEGER    CONSTRAINT fk_evento_jogo REFERENCES Jogo (idJogo),
    minuto      INTEGER    CONSTRAINT nn_evento_minuto NOT NULL,                      --"Número entre 1 e 90"
);

CREATE TABLE Golo (
    idGolo     INTEGER   PRIMARY KEY,
    idEvento   INTEGER   CONSTRAINT fk_golo_evento REFERENCES Evento (idEvento),
    idJogador  INTEGER   CONSTRAINT fk_golo_jogador REFERENCES Jogador (idJogador),
    idEquipa   INTEGER   CONSTRAINT fk_golo_equipa REFERENCES Equipa (idEquipa),
);

CREATE TABLE Equipa (
    idEquipa         INTEGER         PRIMARY KEY,
    nome             VARCHAR(255)    CONSTRAINT check_equipa_nome CHECK (   nome = "Oc Barcelos"         OR
			                                                                nome = "SL Benfica"          OR
			                                                                nome = "FC Porto"            OR
			                                                                nome = "Sporting CP"         OR
			                                                                nome = "SC Tomar"            OR
			                                                                nome = "Famalicense"         OR
			                                                                nome = "HC Braga"            OR
			                                                                nome = "Riba d'Ave"          OR
			                                                                nome = "Juventude de Viana"  OR
			                                                                nome = "UD Oliveirense"      OR
			                                                                nome = "AD Valongo"             ),
    classificação    INTEGER         CONSTRAINT unique_equipa_classificação UNIQUE,                                 --"Número entre 1 e 14"
    idPlayoff        INTEGER         CONSTRAINT fk_equipa_playoff REFERENCES Playoff (idPlayoff),
);

CREATE TABLE Jogador (
    idJogador   INTEGER         PRIMARY KEY,
    nome        VARCHAR(255)    CONSTRAINT nn_jogador_nome NOT NULL,
    dataNasc    DATE            CONSTRAINT nn_jogador_datanasc NOT NULL,
);