-- tipos de datos

-- ENTEROS
-- tynint
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 tinyint,
    campo2 tinyint unsigned

);

drop table ejemplo2.numericos;

-- smaillint
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 smallint,
    campo2 smallint unsigned

);

drop table ejemplo2.numericos;

-- smaillint
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 mediumint,
    campo2 mediumint unsigned

);

drop table ejemplo2.numericos;

-- int
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 int,
    campo2 int unsigned

);

drop table ejemplo2.numericos;

-- bigint
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 bigint,
    campo2 bigint unsigned

);

drop table if exists ejemplo2.numericos;

-- REALES

-- decimal o numeric
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 decimal(15,3), -- 999999999999.999
    campo2 numeric(20,7),
    campo3 decimal(24,0)
);

drop table if exists ejemplo2.numericos;

-- float
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 float,
    campo2 float unsigned,
    campo3 float(10,5),
    campo4 float(10,5) unsigned
);

drop table if exists ejemplo2.numericos;

-- double
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 double,
    campo2 double unsigned,
    campo3 double(10,5),
    campo4 double(10,5) unsigned
);

drop table if exists ejemplo2.numericos;

-- real
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 real,
    campo2 real unsigned,
    campo3 real(10,5),
    campo4 real(10,5) unsigned
);

drop table if exists ejemplo2.numericos;

-- sinonimos de tynint

-- real
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 boolean,
    campo2 bool,
    campo3 bit
);

drop table if exists ejemplo2.numericos;

-- real
create table ejemplo2.numericos(
	campollave int primary key,
	campo1 integer
);

drop table if exists ejemplo2.numericos;

-- Los tipos temporales

create table ejemplo2.temporales(
	id int primary key,
    campo1 date,
    campo2 datetime,
    campo3 timestamp,
    campo4 time,
    campo5 year

);

drop table ejemplo2.temporales;

-- TIPOS CADENA

-- char
create table ejemplo2.cadenas(
	id int primary key auto_increment,
    campo1 char,
    campo2 char(255)
    
    
);

drop table ejemplo2.cadenas;

-- varchar

create table ejemplo2.cadenas(
	id int primary key auto_increment,
    campo1 varchar(10),
    campo2 varchar(5)
    
    
);

drop table ejemplo2.cadenas;

-- blob

create table ejemplo2.cadenas(
	id int primary key auto_increment,
    campo1 mediumblob
    
    
);

create table ejemplo2.cadenas(
	id int primary key auto_increment,
    campo1 tinyblob,
    campo2 mediumblob,
    campo3 blob,
    campo4 longblob
    
    
);

drop table ejemplo2.cadenas;

-- tinytext


create table ejemplo2.cadenas(
	id int primary key auto_increment,
    campo1 tinytext,
    campo2 mediumtext,
    campo3 text,
    campo4 longtext
);
	
-- enum

create table ejemplo2.enumerador(
	id int primary key auto_increment,
    sexo ENUM('masculino', 'femenino')

);

-- set
CREATE TABLE ejemplo2.myset (
    id INT PRIMARY KEY AUTO_INCREMENT,
    col SET('a', 'b', 'c', 'd')
);







