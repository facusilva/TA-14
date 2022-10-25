CREATE DATABASE TA14_EX8;
USE TA14_EX8;

CREATE TABLE piezas(
codigo INT AUTO_INCREMENT PRIMARY KEY,
nombre varchar(100)
);

CREATE TABLE proveedores(
id char(4) PRIMARY KEY,
nombre varchar(100)
);

CREATE TABLE suministra(
codigo_pieza INT,
id_proveedor char(4),
KEY (codigo_pieza, id_proveedor),
FOREIGN KEY (codigo_pieza) REFERENCES piezas(codigo) ON DELETE CASCADE ON UPDATE SET NULL,
FOREIGN KEY (id_proveedor) REFERENCES proveedores(id) ON DELETE CASCADE ON UPDATE SET NULL
);