CREATE DATABASE TA14_EX7;
USE TA14_EX7;

CREATE TABLE despachos(
numero INT PRIMARY KEY,
capacidad INT
);

CREATE TABLE directores(
DNI varchar(8) PRIMARY KEY,
nom_apels varchar(255),
DNI_jefe varchar(8),
despacho INT,
FOREIGN KEY (DNI_jefe) REFERENCES directores(DNI) ON DELETE CASCADE ON UPDATE SET NULL,
FOREIGN KEY (despacho) REFERENCES despachos(numero) ON DELETE CASCADE ON UPDATE SET NULL
);