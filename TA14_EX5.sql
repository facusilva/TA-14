CREATE DATABASE TA14_EX5;
USE TA14_EX5;

CREATE TABLE almacenes(
codigo INT AUTO_INCREMENT PRIMARY KEY,
lugar varchar(100),
capacidad INT
);

CREATE TABLE cajas(
num_referencia char(5) PRIMARY KEY,
contenido varchar(100),
valor INT,
almacen INT,
FOREIGN KEY (almacen) REFERENCES almacenes(codigo) ON DELETE CASCADE ON UPDATE SET NULL
);