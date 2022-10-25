CREATE DATABASE TA14_EX2;
USE TA14_EX2;

CREATE TABLE libro(
clave_libro INT AUTO_INCREMENT PRIMARY KEY,
titulo varchar(60),
idioma varchar(15),
formato varchar(15),
clave_editorial SMALLINT
);

CREATE TABLE tema(
clave_tema SMALLINT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(40)
);

CREATE TABLE autor(
clave_autor INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(60)
);

CREATE TABLE editorial(
clave_editorial SMALLINT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(60),
direccion varchar(60),
telefono varchar(60)
);

CREATE TABLE ejemplar(
clave_ejemplar INT AUTO_INCREMENT PRIMARY KEY,
clave_libro INT,
numero_orden SMALLINT,
edicion SMALLINT,
ubicacion varchar(15),
categoria char,
FOREIGN KEY (clave_libro) REFERENCES libro(clave_libro) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE socio(
clave_socio INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(60),
direccion varchar(60),
telefono varchar(15),
categoria char
);

CREATE TABLE prestamo(
clave_socio INT,
clave_ejemplar INT,
numero_orden SMALLINT, 
fecha_prestamo DATE,
fecha_devolucion DATE,
notas BLOB,
FOREIGN KEY (clave_socio) REFERENCES socio(clave_socio) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (clave_ejemplar) REFERENCES ejemplar(clave_ejemplar) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE trata_sobre(
clave_libro INT,
clave_tema SMALLINT,
FOREIGN KEY (clave_libro) REFERENCES libro(clave_libro) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (clave_tema) REFERENCES tema(clave_tema) ON DELETE CASCADE ON UPDATE CASCADE
);

CREATE TABLE escrito_por(
clave_libro INT,
clave_autor INT,
FOREIGN KEY (clave_libro) REFERENCES libro(clave_libro) ON DELETE CASCADE ON UPDATE CASCADE,
FOREIGN KEY (clave_autor) REFERENCES autor(clave_autor) ON DELETE CASCADE ON UPDATE CASCADE
);