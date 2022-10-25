CREATE DATABASE TA14_EX9;
USE TA14_EX9;

CREATE TABLE cientificos(
DNI varchar(8) PRIMARY KEY,
nom_apels varchar(255)
);

CREATE TABLE proyecto(
id char(4) PRIMARY KEY,
nombre varchar(255),
horas INT
);

CREATE TABLE asignado_a(
cientifico varchar(8),
proyecto char(4),
KEY (cientifico, proyecto),
FOREIGN KEY (cientifico) REFERENCES cientificos(DNI) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (proyecto) REFERENCES proyecto(id) ON DELETE CASCADE ON UPDATE CASCADE
);
