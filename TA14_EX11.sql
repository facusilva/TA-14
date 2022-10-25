CREATE DATABASE TA14_EX11;
USE TA14_EX11;

CREATE TABLE facultad(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100)
);

CREATE TABLE investigadores(
DNI varchar(8) PRIMARY KEY,
nom_apels varchar(255),
facultad INT,
FOREIGN KEY (facultad) REFERENCES facultad(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE equipos(
num_serie char(4) PRIMARY KEY,
nombre varchar(100),
facultad INT,
FOREIGN KEY (facultad) REFERENCES facultad(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE reserva(
DNI varchar(8),
num_serie char(4),
comienzo datetime,
fin datetime,
FOREIGN KEY (DNI) REFERENCES investigadores(DNI) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (num_serie) REFERENCES equipos(num_serie) ON DELETE CASCADE ON UPDATE CASCADE
);