CREATE DATABASE TA14_EX4;
USE TA14_EX4;

CREATE TABLE departamentos(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100),
presupuesto INT
);

CREATE TABLE empleados(
DNI varchar(8) PRIMARY KEY,
nombre varchar(100),
apellidos varchar(255),
departamento INT,
FOREIGN KEY (departamento) REFERENCES departamentos(codigo) ON DELETE CASCADE ON UPDATE SET NULL
);