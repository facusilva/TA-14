CREATE DATABASE TA14_EX1;
USE TA14_EX1;

CREATE TABLE estacion(
identificador INT AUTO_INCREMENT PRIMARY KEY,
latitud float,
longitud float,
altitud float
);

CREATE TABLE muestra(
identificador_estacion INT,
fecha date,
temperatura_min INT,
temperatura_max INT,
precipitaciones INT,
humedad_min INT,
humedad_max INT,
velocidad_viento_min INT,
velocidad_viento_max INT
);
