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
    dataInicio  DATE        NOT NULL,               -- "DD-MM-YYYY"
    dataFim     DATE        NOT NULL,               -- "DD-MM-YYYY"
);

CREATE TABLE Jogo (
    dataHora   DATETIME        NOT NULL,               -- "DD-MM-YYYY HH:MM:SS"
    resultado  VARCHAR(5)      NOT NULL,               -- "formato = golos1-golos2"
);

CREATE TABLE Playoff (
    data    DATE            NOT NULL,               -- "DD-MM-YYYY"
    ronda   VARCHAR(30)     NOT NULL,               -- "formato = Quartos de Final ou Meias Finais ou Final"
);

CREATE TABLE Fase (
    mão        INT            NOT NULL,
    resultado  VARCHAR(5)     NOT NULL,               -- "Resultado atual do Playoff, atualiza após cada jogo"
);

CREATE TABLE Evento (
    minuto    INT       NOT NULL,               --"Número entre 1 e 90"
);

CREATE TABLE Golo (
    
);

CREATE TABLE Equipa (
    nome             VARCHAR(255)   NOT NULL,
    classificação    INT            NOT NULL,       --"Número entre 1 e 14"
);

CREATE TABLE Jogador (
    nome        VARCHAR(255)     NOT NULL,
    dataNasc    DATE             NOT NULL,
);