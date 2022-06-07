--CREAR BASE DE DATOS CONTRATOS DE LEASING--

CREATE DATABASE ContratosFirmadosdeLeasing;

--CREAR TABLA CLIENTES--
USE ContratosFirmadosdeLeasing;

CREATE TABLE Clientes (
  NumerodeCliente int NOT NULL IDENTITY PRIMARY KEY ,
  RAZON SOCIAL varchar(255) DEFAULT NULL
  CUIT varchar(255) DEFAULT NULL
  TIPO varchar(255) DEFAULT NULL
  Segmento varchar(255) DEFAULT NULL
  Oficial vachar(255) DEFAULT NULL);


--CREAR TABLA BIENES--
USE ContratosFirmadosdeLeasing;

CREATE TABLE Bienes (CodigoDelBien int NOT NULL PRIMARY KEY,
  ClaseDelBien varchar(255) DEFAULT NULL,
  Detalle varchar(255) DEFAULT NULL,
  Valor varchar(255) DEFAULT NULL);

  Area int NOT NULL FOREIGN KEY REFERENCES Area(AreaID));

--CREAR TABLA TIPO DE LEASING--
USE ContratosFirmadosdeLeasing;

CREATE TABLE TipoDeLeasing (
  CodigoDeLeasing int NOT NULL PRIMARY KEY,
  ClaseDeLeasing varchar(255) DEFAULT NULL);

  --CREAR TABLA CONTRATOS DE LEASINGS--
USE ContratosFirmadosdeLeasing;

CREATE TABLE ContratosDeLeasing(NumeroDeContrato int NOT NULL PRIMARY KEY,
  Spread varchar(100) DEFAULT NULL
  Fee varchar(100) DEFAULT NULL,
  Tasa varchar(100) DEFAULT NULL,
  CodigoDelBien int NOT NULL FOREIGN KEY REFERENCES Bienes(CodigoDelBien),
  CodigoDeLeasing int NOT NULL FOREIGN KEY REFERENCES TipoDeLeasing(CodigoDeLeasing),
  Estado varchar(100) DEFAULT NULL,
  Monto varchar(100) DEFAULT NULL);

  --CREAR TABLA CONTRATOS FIRMADOS--
USE ContratosFirmadosdeLeasing;


CREATE TABLE ContratosFirmados (
  Spread varchar(255) DEFAULT NULL,
  Segmento varchar(255) DEFAULT NULL,
  Monto varchar(255) DEFAULT NULL,
  NumeroDeContrato int NOT NULL FOREIGN KEY REFERENCES ContratosDeLeasing(NumeroDeContrato),
  CodigoDelBien int NOT NULL FOREIGN KEY REFERENCES ContratosDeLeasing(CodigoDelBien),
  NumeroDeCliente int NOT NULL FOREIGN KEY REFERENCES Clientes(NumeroDeCliente),
  Oficial varchar(255) DEFAULT NULL,
  FechadeFirma date DEFAULT NULL,
 

  