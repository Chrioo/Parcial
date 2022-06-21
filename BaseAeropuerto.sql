Create DataBase Aeropuerto

USE Aeropuerto;

CREATE TABLE Pasajero
(
	idPasajero INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	NombrePasajero VARCHAR(50) NOT NULL,
	ApellidoPasajero VARCHAR(100) NOT NULL,
	Sexo Varchar NOT NULL,
	Edad  INT,
	estado Varchar,
);

CREATE TABLE AeroLInea
(
	idAeroliena INT IDENTITY(1, 1) PRIMARY KEY NOT NULL,
	Nombre VARCHAR(30) NOT NULL,
	Direccion  VARCHAR (15) NOT NULL,
	Telefono INT NOT NULL
	 );

CREATE TABLE Vuelo 
(
idVuelo int identity  (1,1)  PRIMARY KEY NOT NULL,
Capacidad int,
NumeroVuelo int,
);
