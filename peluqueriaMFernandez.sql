create database peluqueria;

create table dueno(
    dni integer,
    nombre varchar(40),
    apellido varchar(40),
    telefono varchar(20),
    direccion varchar(50),
    constraint pk_dueno primary key(dni)
);

create table perro(
	id_perro integer,
    nombre varchar(20),
    fecha_nac date,
    sexo varchar(15),
	dni_dueno integer,
    constraint pk_perro primary key(id_perro),
    constraint fk_perro foreign key(dni_dueno) references dueno(dni) 
    on delete cascade
);

create table historial(
	id_historial int auto_increment,
    fecha date,
    id_perro integer,
    descripcion varchar(200),
    monto integer,
    constraint pk_historial primary key(id_historial),
	constraint fk_historial foreign key(id_perro) references perro(id_perro)
    on delete cascade
);

insert into dueno (dni, nombre, apellido, telefono, direccion) 
values ('40765249', 'ted', 'mosby', '900123765', 'constitucion 325');

insert into dueno (dni, nombre, apellido, telefono, direccion) 
values ('34978534', 'barney', 'stinson', '900786453', 'colombia 3212');


insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno) 
values ('12', 'pocho', '2020-04-12', 'macho', '40765249');

insert into perro (id_perro, nombre, fecha_nac, sexo, dni_dueno)
values ('27', 'coco', '2015-07-05', 'macho', '34978534');


insert into historial (fecha, id_perro, descripcion, monto)
values ('2016-04-02', '27', 'baño completo', '1600');

insert into historial (fecha, id_perro, descripcion, monto)
values ('2021-09-07', '12', 'corte y baño completo', '3000');

insert into historial (fecha, id_perro, descripcion, monto)
values ('2022-03-02', '12', 'corte', '1600');

-- inciso 3
delete perro from perro
        inner join
    historial ON historial.id_perro = perro.id_perro 
where
    historial.fecha < '2020-01-01';

-- inciso 4
update perro
set fecha_nac = '2020-04-13'
where id_perro='12';