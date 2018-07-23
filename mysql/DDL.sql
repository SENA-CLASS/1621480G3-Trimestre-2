-- DDL
create database ejemplo01;
drop database ejemplo01;
ALTER SCHEMA `ejemplo2`  DEFAULT CHARACTER SET cp1250  DEFAULT COLLATE cp1250_general_ci ;

-- tipos de datos
-- tynint
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 tinyint,
    campo2 tinyint unsigned

);

drop table ejemplo2.numericos;

-- tynint
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 smallint,
    campo2 smallint unsigned

);

drop table ejemplo2.numericos;


-- CREATE TABLE

create temporary table ejemplo2.tablatemporal(
	id int primary key auto_increment,
    campo1 int
);

insert into ejemplo2.tablatemporal values('1', '1');

select * from ejemplo2.tablatemporal;


create table if not exists ejemplo2.tablatemporal(
	id int primary key auto_increment,
    campo1 int
) engine= MyISAM ;

drop table ejemplo2.tablatemporal;

-- creacion de definiones

-- llave primaria simple
create table if not exists ejemplo2.tabla1(
	id int primary key ,
    campo1 int
);
drop table ejemplo2.tabla1;

create table if not exists ejemplo2.tabla1(
	id int,
    campo1 int,
    primary key(id)
);
-- llave primaria compuesta

create table if not exists ejemplo2.tabla2(
	tipo_documento varchar(10) ,
    numero_documento varchar(50),
    nombre varchar(100),
    primary key (tipo_documento, numero_documento)
);

-- index unique

create table if not exists ejemplo2.tabla3(
	tipo_documento varchar(10) ,
    numero_documento varchar(50),
    nombre varchar(100),
    correo_electronico varchar(100),
    UNIQUE INDEX correo_idx (correo_electronico ASC),
    primary key (tipo_documento, numero_documento)
);

-- indice me ayuda a que las consultas sean mas rapidas

create table if not exists ejemplo2.tabla4(
	tipo_documento varchar(10) ,
    numero_documento varchar(50),
    nombre varchar(100),
    correo_electronico varchar(100),
	INDEX correo_idx (correo_electronico ASC),-- hace que la basa de datos pese mas
    primary key (tipo_documento, numero_documento)
);

select * from ejemplo2.tabla4 where nombre = 'pepe';


















