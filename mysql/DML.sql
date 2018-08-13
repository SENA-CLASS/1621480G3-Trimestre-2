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

  -- insert con on duplicate
INSERT INTO adsi.ejemplo2
  (idnew_table ,
  fecha,hora  )
VALUES
(3,
'2017-01-01',
'12:00:00') on duplicate key update fecha='2017-01-02', hora='15:00:00';

-- insert con set
insert into adsi.casa1 set matricula='234', direccion='sdfasd';

-- insert con una subconsulta

INSERT INTO adsi.casa2
(matricula,
direccion)
SELECT * FROM adsi.casa1;

-- update

UPDATE tipo_documento  SET nombre_documento = 'targeta' where sigla='TI' ;

select * from adsi.casa1;

UPDATE adsi.casa1
SET
direccion = 'nue'
WHERE matricula = '1234'; -- where

select * from observador_de_proyectos.cliente;

update observador_de_proyectos.cliente
set segundo_apellido = null
where numero_documento = '1000063252';


-- delete 

DELETE FROM tipo_documento WHERE sigla='NIP';

-- consulta

select * from tipo_documento where sigla = 'CC';

select nombre_documento from tipo_documento where sigla = 'CC';

-- consultas basicas

-- * | all

select * from adsi.casa1;

-- select distinct sirve para consultar una columna sin repetir datos
SELECT distinct(primer_apellido) FROM observador_de_proyectos.cliente;

-- alias son nombre mas cortos que se le dan a una tabla

select * from observador_de_proyectos.cliente c where c.numero_documento='99021305606';
select * from observador_de_proyectos.cliente as c where c.numero_documento='99021305606';

-- seudonimos sirve para cambiar el nombre de un campo en una consulta

select c.tipo_documento as 'TIPO DOCUMENTO', c.numero_documento as 'NUMERO DE DOCUMENTO' from observador_de_proyectos.cliente c where c.numero_documento='99021305606';

-- si quiero consultar un campo si es null no se puede usar el signo =
SELECT * FROM observador_de_proyectos.cliente where segundo_apellido is null;

-- DISTINCT trae los datos pero no muestra los repetidos

select distinct(c.primer_nombre) from observador_de_proyectos.cliente c;

select distinctrow(c.primer_nombre) from observador_de_proyectos.cliente c;

-- group by
select c.primer_nombre from observador_de_proyectos.cliente c group by c.primer_nombre; -- es igual al distinc
select c.primer_nombre from observador_de_proyectos.cliente c group by c.primer_nombre asc; -- es igual al distinc
select c.primer_nombre from observador_de_proyectos.cliente c group by c.primer_nombre desc; -- es igual al distinc

create schema ejemplo;

create table ejemplo.tabla(
	id int primary key auto_increment,
	Store_Name varchar(40),
    sales float,
    txn_date date
);

INSERT INTO `ejemplo`.`tabla` (`Store_Name`, `sales`, `txn_date`) VALUES ('los angeles', '150', '2017-01-01');
INSERT INTO `ejemplo`.`tabla` (`Store_Name`, `sales`, `txn_date`) VALUES ('san diaego', '200', '2017-01-01');
INSERT INTO `ejemplo`.`tabla` (`Store_Name`, `sales`, `txn_date`) VALUES ('los angeles', '300', '2017-01-01');
INSERT INTO `ejemplo`.`tabla` (`Store_Name`, `sales`, `txn_date`) VALUES ('boston', '50', '2017-01-01');

select * from ejemplo.tabla;

select t.Store_Name, sum(t.sales) from ejemplo.tabla t group by t.Store_Name asc;


-- consutas de funciones aritmeticas
SELECT 1+1;
SELECT 1+1 FROM dual;

SELECT now() FROM dual;

-- Cláusula WHERE y condiciones lógicas

-- operadores relacionales
-- < menor que
-- > mayor que
-- >= mayor o igual que
-- <= menor o igual que
-- != diferente
-- = igual

-- operadores logicos true o false
-- condicion

-- a>b condicion 1
-- c>d condicion 2
-- unidas por operadores logicos a>b and c>d

-- operadores logicos
-- and or not

-- a>b and c>d

-- para los El caso de los valores NULL usar el is

SELECT * FROM observador_de_proyectos.cliente where segundo_nombre is null;

SELECT * FROM observador_de_proyectos.cliente where segundo_nombre is not null;

-- order by
select * from observador_de_proyectos.cliente o order by o.primer_nombre asc;
select * from observador_de_proyectos.cliente o order by o.primer_nombre desc;

-- between

SELECT * FROM observador_de_proyectos.cliente where numero_documento>= '8000000' and numero_documento <= '94419239';

SELECT * FROM observador_de_proyectos.cliente where numero_documento between '8000000' and '94419239';

-- like

SELECT * FROM observador_de_proyectos.cliente where primer_nombre like 't%zo%';

-- limit
select * from observador_de_proyectos.cliente o order by o.numero_documento desc limit 5;

-- uso del any esigual que el some
select * from observador_de_proyectos.cliente c where c.numero_documento = any (select fi.numero_documento from observador_de_proyectos.instructor_ficha fi where fi.ficha= '1621480G3');
select * from observador_de_proyectos.cliente c where c.numero_documento = some (select fi.numero_documento from observador_de_proyectos.instructor_ficha fi where fi.ficha= '1349397');

-- in

SELECT * FROM observador_de_proyectos.cliente_has_rol where rol in ('instructor', 'jurado');

SELECT * FROM observador_de_proyectos.cliente_has_rol where rol ='instructor' or rol = 'jurado';

select * numero_documento, case rol when 'aprendiz' then 'estudiante'
when 'isntructor' then 'docente'
else 'aparecido' end as "puesto" from cliente_has_rol;

-- JOINS

SELECT
    c.primer_nombre,
    c.primer_apellido,
    cr.rol,
    cr.fecha_terminacion,
    cr.estado
FROM
    observador_de_proyectos.cliente c,
    observador_de_proyectos.cliente_has_rol cr
WHERE
    c.tipo_documento = cr.tipo_documento
        AND c.numero_documento = cr.numero_documento
        AND c.tipo_documento = 'CC'
        AND c.numero_documento = '80013834';


SELECT
    c.primer_nombre,
    c.primer_apellido,
    cr.rol,
    cr.fecha_terminacion,
    cr.estado
FROM
    observador_de_proyectos.cliente c
        JOIN
    observador_de_proyectos.cliente_has_rol cr ON (c.tipo_documento = cr.tipo_documento
        AND c.numero_documento = cr.numero_documento)
WHERE
    c.tipo_documento = 'CC'
        AND c.numero_documento = '80013833';

SELECT

    t.descripcion,
    c.primer_nombre,
    c.primer_apellido,
    cr.rol,
    cr.fecha_terminacion,
    cr.estado,
    r.descripcion
FROM
    observador_de_proyectos.cliente c
        inner JOIN
    (observador_de_proyectos.cliente_has_rol cr, observador_de_proyectos.rol r, observador_de_proyectos.tipo_documento t)
    ON (c.tipo_documento = cr.tipo_documento
        AND c.numero_documento = cr.numero_documento and cr.rol = r.id_rol and t.documento= c.tipo_documento)
WHERE
    c.tipo_documento = 'CC'
        AND c.numero_documento = '80013833';


SELECT

    t.descripcion,
    c.primer_nombre,
    c.primer_apellido,
    cr.rol,
    cr.fecha_terminacion,
    cr.estado,
    r.descripcion
FROM
    observador_de_proyectos.cliente c
        inner JOIN
    observador_de_proyectos.cliente_has_rol cr on c.tipo_documento = cr.tipo_documento AND c.numero_documento = cr.numero_documento
		inner join
	observador_de_proyectos.rol r on cr.rol = r.id_rol
		inner join
	observador_de_proyectos.tipo_documento t on t.documento= c.tipo_documento
WHERE
    c.tipo_documento = 'CC'
        AND c.numero_documento = '80013833';


-- JOIN Cruzada

select count(*) from observador_de_proyectos.tipo_documento, observador_de_proyectos.cliente;

select count(*) from observador_de_proyectos.cliente;
select count(*) from observador_de_proyectos.tipo_documento;

-- Equijoin (Join de equivalencia)
select * from observador_de_proyectos.tipo_documento t, observador_de_proyectos.cliente c
where t.documento= c.tipo_documento
;

-- Autojoin o join reflexiva

select * from observador_de_proyectos.cliente c1, observador_de_proyectos.cliente c2
where c1.primer_nombre = c2.segundo_nombre
;

-- join
select * from observador_de_proyectos.cliente c, observador_de_proyectos.aprendiz a
where c.tipo_documento = a.tipo_documento and c.numero_documento = a.numero_documento
;

-- left join

select * from observador_de_proyectos.cliente c  left join observador_de_proyectos.aprendiz
    on c.tipo_documento = aprendiz.tipo_documento and c.numero_documento = aprendiz.numero_documento;

-- right join

select * from observador_de_proyectos.cliente c  right join observador_de_proyectos.aprendiz
    on c.tipo_documento = aprendiz.tipo_documento and c.numero_documento = aprendiz.numero_documento;

select * from observador_de_proyectos.usuario;

alter table observador_de_proyectos.usuario drop column contrasenia;

-- subconsultas

-- subconsulta en el from

SELECT
    *
FROM
    (SELECT
		c.tipo_documento,
        c.numero_documento,
        t.descripcion,
            c.primer_nombre,
            c.primer_apellido,
            cr.rol,
            cr.fecha_terminacion,
            cr.estado,
            r.descripcion as des
    FROM
        observador_de_proyectos.cliente c, observador_de_proyectos.cliente_has_rol cr, observador_de_proyectos.rol r, observador_de_proyectos.tipo_documento t
    WHERE
        (c.tipo_documento = cr.tipo_documento
            AND c.numero_documento = cr.numero_documento
            AND cr.rol = r.id_rol
            AND t.documento = c.tipo_documento)) as a
WHERE
    a.tipo_documento = 'CC'
        AND a.numero_documento = '80013834';

-- usb consulta en el where

SELECT
    *
FROM
    observador_de_proyectos.cliente c
WHERE
    c.numero_documento IN (SELECT
            a.numero_documento
        FROM
            observador_de_proyectos.aprendiz a);


select c.tipo_documento, c.numero_documento, c.primer_nombre,c.segundo_nombre, c.primer_apellido, c.segundo_apellido, c.foto
from observador_de_proyectos.aprendiz a
       inner join observador_de_proyectos.cliente c on a.tipo_documento = c.tipo_documento and a.numero_documento = c.numero_documento
;












