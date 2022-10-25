CREATE DATABASE TA14_EX3;
USE TA14_EX3;

CREATE TABLE fabricantes(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100)
);

CREATE TABLE articulos(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100),
precio INT,
fabricante INT,
FOREIGN KEY (fabricante) REFERENCES fabricantes(codigo) ON DELETE CASCADE ON UPDATE CASCADE
);