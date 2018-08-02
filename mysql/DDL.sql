-- DDL
create database ejemplo01;
drop database ejemplo01;
ALTER SCHEMA ejemplo2  DEFAULT CHARACTER SET cp1250  DEFAULT COLLATE cp1250_general_ci ;

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

-- index unique simple

create table if not exists ejemplo2.cliente(
	tipo_documento varchar(10) , -- llave semantica
    numero_documento varchar(50), -- llave semantica
    nombre varchar(100),
    correo_electronico varchar(100),
    UNIQUE INDEX correo_idx (correo_electronico ASC),
    primary key (tipo_documento, numero_documento)
);

-- index unique compuesto

create table if not exists ejemplo2.cliente(
	id int primary key auto_increment, -- llave primaria tecnica
	tipo_documento varchar(10) ,
    numero_documento varchar(50),
    nombre varchar(100),
    correo_electronico varchar(100),
    unique index documento_idx (tipo_documento ASC, numero_documento ASC),
    UNIQUE INDEX correo_idx (correo_electronico ASC)
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

-- indice compuesto me ayuda a que las consultas sean mas rapidas

create table if not exists ejemplo2.tabla6(
	tipo_documento varchar(10) ,
    numero_documento varchar(50),
    nombre varchar(100),
    apellidos varchar(100),
    correo_electronico varchar(100),
	INDEX persona_idx (nombre ASC, apellidos ASC),-- hace que la basa de datos pese mas
    primary key (tipo_documento, numero_documento)
);

select * from ejemplo2.tabla6 as t where t.nombre ='pepe';

-- NOT NULL

create table ejemplo2.tabla7(
	id int primary key,
    campo1 int not null
);

CREATE TABLE ejemplo2.facturas2(
num INTEGER PRIMARY KEY,
cantidad REAL(8,2),
tipo_de_pago VARCHAR(30) DEFAULT 'Tarjeta'
);
-- unique

use ejemplo2;
CREATE TABLE coches (
    marca VARCHAR(50),
    tipo_vehiculo VARCHAR(50),
    matricu VARCHAR(15) UNIQUE
);

-- PRIMARY KEY
CREATE TABLE clientes10 (
    num_cliente INTEGER PRIMARY KEY,
    nombre_cliente VARCHAR(30) NOT NULL
);

-- PRIMARY KEY CON NOMBRE

CREATE TABLE clientes11 (
    num_cliente INTEGER,
    nombre_cliente VARCHAR(30) NOT NULL,
    CONSTRAINT claveprim PRIMARY KEY (num_cliente) -- este no sirve en la version actual 8.0.11 poner PRIMARY como nombre del contraint
);

-- FOREIGN KEY

create schema ejemplo2;

use ejemplo2;

-- uno a muchos identificable

create table tipo_documento(
	sigla varchar(10) primary key,
    nombre_documento varchar(100) not null,
    estado boolean not null
);

drop table usuario;

create table usuario(
	sigla varchar(10) not null,
	numero_documento varchar(50) not null,
    primer_nombre varchar(100) not null,
    segundo_nombre varchar(100),
    primer_apellido varchar(100) not null,
    segundo_apellido varchar(100),
    correo_electronico varchar(100) not null unique,
    constraint fk foreign key (sigla) references tipo_documento(sigla),
    primary key (numero_documento, sigla)
);

-- uno a muchos no identificable

create table tipo_documento(
	sigla varchar(10) primary key,
    nombre_documento varchar(100) not null,
    estado boolean not null
);

drop table usuario;

create table usuario(
	sigla varchar(10) not null,
	numero_documento varchar(50) not null,
    primer_nombre varchar(100) not null,
    segundo_nombre varchar(100),
    primer_apellido varchar(100) not null,
    segundo_apellido varchar(100),
    correo_electronico varchar(100) not null unique,
    constraint fk foreign key (sigla) references tipo_documento(sigla),
    primary key ( numero_documento)
);

-- alter sirven para hace modificaciones a la extructura de las tablas

-- Renombrado de tabla y gestión de columnas

alter table usuario1 rename usuario;

-- alter para agregar columnas

alter table usuario add column ( sexo varchar(10) not null);

-- alter para cambiar el nombre de una columna

alter table usuario change sexo sex varchar(50);

-- eliminar columna

alter table usuario drop column sex;

-- ejemplo de relaciones a la misma entidad
-- no identificable

CREATE TABLE categoria (
  id int(11) NOT NULL AUTO_INCREMENT,
  nombre_categoria varchar(45) NOT NULL,
  categoria_id int(11) NOT NULL,
  PRIMARY KEY (id),
  CONSTRAINT fk_categoria_categoria FOREIGN KEY (categoria_id) REFERENCES categoria (id)
) ;

CREATE TABLE categoria2 (
  id int(11) NOT NULL,
  nombre_categoria varchar(45) NOT NULL,
  categoria_id int(11) NOT NULL,
  PRIMARY KEY (id,categoria_id),
  CONSTRAINT fk_categoria_categoria2 FOREIGN KEY (categoria_id) REFERENCES categoria2 (id)
);

-- cascade para actualizar en cascada y eliminar en cascada
-- -----------------------------------------------------
-- Table mydb.tipo_documento
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS tipo_documento (
  sigla VARCHAR(10) NOT NULL,
  nombre_tipo_documento VARCHAR(45) NOT NULL,
  estado TINYINT NOT NULL,
  PRIMARY KEY (sigla))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table mydb.cliente
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS cliente (
  numero_documento VARCHAR(20) NOT NULL,
  tipo_documento_sigla VARCHAR(10) NOT NULL,
  nombre VARCHAR(45) NOT NULL,
  telefono VARCHAR(45) NULL,
  direccion VARCHAR(45) NULL,
  PRIMARY KEY (numero_documento, tipo_documento_sigla),
  INDEX fk_cliente_tipo_documento_idx (tipo_documento_sigla ASC),
  CONSTRAINT fk_cliente_tipo_documento
    FOREIGN KEY (tipo_documento_sigla)
    REFERENCES tipo_documento (sigla)
    ON DELETE restrict
    ON UPDATE cascade)
ENGINE = InnoDB;



create table estado_formacion(
    id int primary key,
    estado_formacion varchar(40),
    unique index estado_formacion_idx (estado_formacion asc)
);
    
    
create table fase(
	id int primary key,
    id_proyecto int not null,
    nombre varchar(40) not null,
    estado varchar(40),
	unique index fase_idx (id_proyecto asc, nombre asc),
	constraint fk_proyecto foreign key 	(id_proyecto) references proyecto(id)
);














