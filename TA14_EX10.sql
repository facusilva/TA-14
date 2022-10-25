CREATE DATABASE TA14_EX10;
USE TA14_EX10;

CREATE TABLE productos(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100),
precio INT
);

CREATE TABLE cajeros(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nom_apels varchar(255)
);

CREATE TABLE maquinas_registradoras(
codigo INT AUTO_INCREMENT PRIMARY KEY,
piso INT
);

CREATE TABLE venta(
cajero INT,
maquina INT,
producto INT,
KEY (cajero, maquina, producto),
FOREIGN KEY (cajero) REFERENCES cajeros(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (maquina) REFERENCES maquinas_registradoras(codigo) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (producto) REFERENCES productos(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);