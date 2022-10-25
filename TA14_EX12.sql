CREATE DATABASE TA14_EX12;
USE TA14_EX12;

CREATE TABLE profesores(
DNI varchar(9) PRIMARY KEY,
nombre varchar(60),
apellido1 varchar(40),
apellido2 varchar(40),
direccion varchar(255),
titulo varchar(80),
gana INT NOT NULL,
UNIQUE KEY nombre_completo (nombre, apellido1, apellido2)
);

CREATE TABLE cursos(
codigo_curso INT AUTO_INCREMENT PRIMARY KEY,
nombre_curso varchar(100) UNIQUE,
DNI_profesor varchar(9),
maximo_alumnos INT,
fecha_inicio DATE,
fecha_fin DATE,
num_horas INT NOT NULL,
FOREIGN KEY (DNI_profesor) REFERENCES profesores(DNI) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE alumnos(
DNI varchar(9) PRIMARY KEY,
codigo_alumno INT,
nombre varchar(60),
apellido1 varchar(40),
apellido2 varchar(40),
direccion varchar(255),
sexo ENUM('H', 'M'),
fecha_nacimiento DATE,
curso INT NOT NULL,
FOREIGN KEY (curso) REFERENCES cursos(codigo_curso) ON DELETE CASCADE ON UPDATE CASCADE
);
