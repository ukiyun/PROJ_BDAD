PRAGMA foreign_keys = ON;

.mode columns
.headers on

DROP TABLE IF EXISTS Jornada;
DROP TABLE IF EXISTS Jogo;
DROP TABLE IF EXISTS Playoff;
DROP TABLE IF EXISTS Fase;
DROP TABLE IF EXISTS Evento;
DROP TABLE IF EXISTS Golo;
DROP TABLE IF EXISTS Equipa;
DROP TABLE IF EXISTS Jogador;


CREATE TABLE Jornada (
    idJornada   INTEGER  PRIMARY KEY,
    dataInicio  DATE     CONSTRAINT unique_jornada_datainicio UNIQUE,               -- "DD-MM-YYYY"
    dataFim     DATE     CONSTRAINT unique_jornada_datafim UNIQUE                -- "DD-MM-YYYY"
);

CREATE TABLE Jogo (
    idJogo     INTEGER      PRIMARY KEY,
    dataHora   DATETIME        NOT NULL,               -- "DD-MM-YYYY HH:MM:SS"
    resultado  VARCHAR(5)      NOT NULL,                -- "formato = golos1-golos2"
    jornada  INTEGER         NOT NULL
);

CREATE TABLE Playoff (
    idPlayoff     INTEGER      PRIMARY KEY,
    dia          DATE            NOT NULL,               -- "DD-MM-YYYY"
    ronda         VARCHAR(30)     NOT NULL                -- "formato = Quartos de Final ou Meias Finais ou Final"
);

CREATE TABLE Fase (
    idFase     INTEGER     PRIMARY KEY,
    mão        INTEGER        NOT NULL,
    resultado  VARCHAR(5)     NOT NULL                -- "Resultado atual do Playoff, atualiza após cada jogo"
);

CREATE TABLE Evento (
    idEvento  INTEGER    PRIMARY KEY,
    minuto    INTEGER    CONSTRAINT nn_evento_minuto NOT NULL               --"Número entre 1 e 90"
);

CREATE TABLE Golo (
    idGolo     INTEGER    PRIMARY KEY,
    minuto     INTEGER    NOT NULL,
    jogador  INTEGER    NOT NULL,
    jogo     INTEGER    NOT NULL,
    equipa   INTEGER    NOT NULL
);

CREATE TABLE Equipa (
    idEquipa         INTEGER         PRIMARY KEY,
    nome             VARCHAR(255)    CONSTRAINT unique_equipa_nome UNIQUE,
    classificação    INT             CONSTRAINT unique_equipa_classificação UNIQUE       --"Número entre 1 e 14"
);

CREATE TABLE Jogador (
    idJogador   INTEGER         PRIMARY KEY,
    nome        VARCHAR(255)    CONSTRAINT nn_jogador_nome NOT NULL,
    dataNasc    DATE            CONSTRAINT nn_jogador_datanasc NOT NULL,
    equipaJ    INTEGER         NOT NULL
);