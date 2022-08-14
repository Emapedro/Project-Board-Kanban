create database PeluqueriaCanina;
use PeluqueriaCanina;

create table Dueno(
DNI int not null unique,
Nombre varchar(150) not null,
Apellido varchar(150) not null,
Telefono varchar(150) not null,
Direccion varchar(200) not null,
primary key (DNI)
);
insert into Dueno(DNI,Nombre,Apellido,Telefono,Direccion) values (30123456,'Pedro','Hernandez','3517625346','mexico 350');
insert into Dueno(DNI,Nombre,Apellido,Telefono,Direccion) values (30654321,'Pedro','Gonzalez','35174629632','Peru 350');
insert into Dueno(DNI,Nombre,Apellido,Telefono,Direccion) values (20123456,'Marta','Figueroa','3513450763','Chile 350');
insert into Dueno(DNI,Nombre,Apellido,Telefono,Direccion) values (33123456,'Facundo','Cabral','3519365583','Brasil 350');

create table Perro(
ID_perro int not null unique auto_increment,
Nombre varchar(50) not null,
Fecha_nac datetime default null,
Sexo varchar(10) not null,
DNI_dueno int not null,
primary key (ID_perro),
foreign key (DNI_dueno) references Dueno(DNI)
);

insert into Perro(Nombre,Fecha_nac,Sexo,DNI_dueno) values ('pichicho','2018-04-15','Macho',30123456);
insert into Perro(Nombre,Fecha_nac,Sexo,DNI_dueno) values ('perla','2016-02-25','Hembra',30123456);
insert into Perro(Nombre,Fecha_nac,Sexo,DNI_dueno) values ('boby','2019-11-05','Macho',30123456);
insert into Perro(Nombre,Fecha_nac,Sexo,DNI_dueno) values ('firulay','2019-11-05','Macho',20123456);
insert into Perro(ID_perro,Nombre,Fecha_nac,Sexo,DNI_dueno) values (4,'pachorra','2016-12-12','Macho',33123456);
insert into Perro(ID_perro,Nombre,Fecha_nac,Sexo,DNI_dueno) values (10,'Fido','2020-12-12','Macho',20123456);

create table Historial(
ID_historial int not null unique auto_increment,
Fecha datetime not null,
Perro int not null,
Descripcion varchar(200) not null,
Monto float not null,
primary key (ID_historial),
foreign key (perro) references Perro(ID_perro)
);

insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2021-04-16',4,'baño,corte,peinado',1500);
insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2021-12-06',5,'baño,corte,peinado',1500);
insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2022-01-05',3,'baño,peinado',1000);
insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2022-02-16',2,'baño,corte,peinado',1500);
insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2022-02-20',1,'baño,corte,peinado',1500);
insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2022-03-08',5,'baño,peinado',1000);
insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2022-01-05',3,'baño,corte,peinado',1500);
insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2022-04-20',1,'baño,corte,peinado',1500);
insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2022-07-20',2,'baño,corte,peinado',1500);

select * from dueno;

-- Punto Nº 5 de SQL, echo por Juan Fernandez
select Dueno.Nombre,Dueno.Apellido, Perro.Nombre as perros from Dueno inner join Perro on Dueno.DNI=Perro.DNI_dueno where Dueno.Nombre = 'Pedro';

-- punto 6
select perro.nombre as perro,historial.fecha from historial inner join perro on historial.perro=perro.ID_perro where historial.fecha  like '2022%';

-- punto 7
select perro,monto,fecha from historial where fecha like '2022-07%';

-- punto 9
update dueno
set direccion = 'Libertad 123'
where DNI = 30123456 ;

-- punto 10
insert into Historial(Fecha,Perro,Descripcion,Monto) values ('2022-07-00',10,'baño,corte,peinado',1500);

-- punto 11
select dueno.nombre,dueno.apellido,perro.nombre as perro,perro.fecha_nac,historial.fecha as historial
from perro inner join historial on historial.perro=perro.ID_perro 
inner join dueno on Dueno.DNI=Perro.DNI_dueno 
where fecha_nac  > '2017-08-13' and   fecha<'2022-01-01';

