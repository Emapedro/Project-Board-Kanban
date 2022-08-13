/* 	BASE DE DATOS
	A. Crear Base de Datos y Tablas según Modelo Relacional
	B. Realizar puntos 1 y 2
		Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias.
		Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
	C. Elegir algunos de los puntos 3 al 12 y agregarlo al script  (diferentes entre cada uno de los integrantes)
		4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
	D. Subir Script .sql con todos los puntos mencionados a su rama personal del GitHub grupal
*/

# A. Crear Base de Datos y Tablas según Modelo Relacional:
CREATE DATABASE veterinaria;

CREATE TABLE dueno (
DNI INT NOT NULL,
nombre VARCHAR(50) NOT NULL,
apellido VARCHAR(50) NOT NULL,
telefono VARCHAR(20) NOT NULL,
direccion VARCHAR(150) NOT NULL,
PRIMARY KEY (DNI)
);

CREATE TABLE perro (
ID_perro INT NOT NULL AUTO_INCREMENT UNIQUE,
nombre VARCHAR(50) NOT NULL,
fecha_nac DATE NOT NULL,
sexo VARCHAR(10) NOT NULL,
DNI_dueno INT NOT NULL,
PRIMARY KEY (ID_perro),
CONSTRAINT DNI_dueno FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE historial (
ID_historial INT NOT NULL AUTO_INCREMENT UNIQUE,
fecha DATE NOT NULL,
perro INT NOT NULL,
descripcion VARCHAR(200) NOT NULL,
monto FLOAT NOT NULL,
PRIMARY KEY (ID_historial),
CONSTRAINT perro FOREIGN KEY (perro) REFERENCES perro(ID_perro)
);

# B. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal:
INSERT INTO dueno (DNI, nombre, apellido, telefono, direccion) VALUES ( 14434558, 'Jose', 'Perez', '4551932', 'La Paz 915');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('Ramon', '2020-05-13', 'Macho', 14434558);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2021-10-06', 1, 'Baño y corte de pelo', 1100);

INSERT INTO dueno (DNI, nombre, apellido, telefono, direccion) VALUES ( 40712693, 'Liliana', 'Canosa', '155022487', '9 de Julio 2250');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('Cleo', '2017-08-28', 'Hembra', 40712693);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2018-06-18', 2, 'Vacunación', 1400);

INSERT INTO dueno (DNI, nombre, apellido, telefono, direccion) VALUES ( 33511745, 'Juan', 'Martinez', '155400366', 'Catamarca 1831');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('Leopoldo', '2019-02-24', 'Macho', 33511745);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2019-05-16', 3, 'Castración', 8000);

INSERT INTO dueno (DNI, nombre, apellido, telefono, direccion) VALUES ( 18246884, 'Rosa', 'Fuentes', '154899765', 'Junin 2811');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('Kira', '2017-09-30', 'Hembra', 18246884);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2019-07-11', 4, 'Vacunación', 1400);

INSERT INTO dueno (DNI, nombre, apellido, telefono, direccion) VALUES ( 25688413, 'Elisa', 'Paredes', '4693587', 'La Rioja 478');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('Lola', '2022-01-08', 'Hembra', 25688413);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2022-08-02', 5, 'Higiene dental', 800);

INSERT INTO dueno (DNI, nombre, apellido, telefono, direccion) VALUES ( 31502410, 'Carla', 'Ponte', '155011578', '25 de Mayo 2354');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('Uma', '2018-11-21', 'Hembra', 31502410);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2020-02-22', 6, 'Baño y corte de pelo', 1100);

INSERT INTO dueno (DNI, nombre, apellido, telefono, direccion) VALUES ( 23685111, 'Cristrian', 'Solanas', '4528799', 'Las Rosas 512');
INSERT INTO perro (nombre, fecha_nac, sexo, DNI_dueno) VALUES ('Poroto', '2022-07-14', 'Macho', 23685111);
INSERT INTO historial (fecha, perro, descripcion, monto) VALUES ('2022-08-08', 7, 'Vacunación y desparacitante', 1600);


# C. 4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere:
UPDATE perro SET fecha_nac = '2017-10-10'
WHERE DNI_dueno = '31502410';

UPDATE perro SET fecha_nac = '2018-07-14'
WHERE DNI_dueno = '23685111';

# Mostrar las tablas:
SELECT * FROM dueno;
SELECT * FROM perro;
SELECT * FROM historial;
