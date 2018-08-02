-- joins

select * from observador_de_proyectos.tipo_documento;

-- join implicito
SELECT 
    *
FROM
    observador_de_proyectos.cliente;

select t.descripcion, c.numero_documento, c.primer_nombre from observador_de_proyectos.tipo_documento as t, observador_de_proyectos.cliente as c
	where t.documento = c.tipo_documento 
    and c.numero_documento= '80013833'
;

-- join explicito

SELECT 
    *
FROM
    observador_de_proyectos.cliente;

select t.descripcion, c.numero_documento, c.primer_nombre 
from observador_de_proyectos.tipo_documento as t inner join observador_de_proyectos.cliente as c
	on t.documento = c.tipo_documento
    where c.numero_documento= '80013833'
;


SELECT 
    *
FROM
    observador_de_proyectos.cliente;

SELECT 
    t.descripcion,
    c.numero_documento, 
    c.primer_nombre,
    a.estado,
    a.ficha
FROM
    observador_de_proyectos.tipo_documento AS t
        INNER JOIN
    observador_de_proyectos.cliente AS c ON t.documento = c.tipo_documento
		inner join
	observador_de_proyectos.aprendiz as a on c.tipo_documento = a.tipo_documento and c.numero_documento = a.numero_documento
where 
	a.estado='Desertado'
;




