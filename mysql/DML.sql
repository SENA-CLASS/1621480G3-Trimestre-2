-- DML

create schema ejemplo01;

use ejemplo01;

create table tipo_documento(
	sigla varchar(10) primary key,
    nombre_documento varchar(100) not null,
    estado boolean not null
);


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



-- insertar en base de datos

insert into tipo_documento values('CC','Cedula de ciudadania', true);

insert into tipo_documento(estado, sigla, nombre_documento) values(true,'TI', 'Targeta de identidad');

insert into tipo_documento values('NUIP','NUIP', true), ('NIT','Numero de identificación tirbutaria', true);

-- update

UPDATE tipo_documento  SET nombre_documento = 'targeta' where sigla='TI' ;

-- delete 

DELETE FROM tipo_documento WHERE sigla='NIP';

-- consulta

select * from tipo_documento where sigla = 'CC';

select nombre_documento from tipo_documento where sigla = 'CC';







