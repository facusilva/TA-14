CREATE DATABASE TA14_EX6;
USE TA14_EX6;

CREATE TABLE peliculas(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100),
calificacion_edad INT
);

CREATE TABLE salas(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100),
pelicula INT,
FOREIGN KEY (pelicula) REFERENCES peliculas(codigo) ON DELETE CASCADE ON UPDATE SET NULL
);
