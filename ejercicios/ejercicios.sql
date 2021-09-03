--EJERCICIO 1
SELECT SUM(plato.valor_plato) as Total FROM asistencia 
    INNER JOIN menu_asistencia ON menu_asistencia.asistencia_id = asistencia.asistencia_id
    INNER JOIN menu ON menu.menu_id = menu_asistencia.menu_id
    INNER JOIN menu_plato ON menu_plato.menu_id = menu_asistencia.menu_id
    INNER JOIN plato ON plato.plato_id = menu_plato.plato_id
WHERE nino_id = 5 AND asistencia.fecha_ingreso BETWEEN '2021-07-01 00:00:00' and '2021-07-30 00:00:00';

--EJERCICIO 2
SELECT plato.nombre_plato FROM asistencia 
    INNER JOIN menu_asistencia ON menu_asistencia.asistencia_id = asistencia.asistencia_id
    INNER JOIN menu ON menu.menu_id = menu_asistencia.menu_id
    INNER JOIN menu_plato ON menu_plato.menu_id = menu_asistencia.menu_id
    INNER JOIN plato ON plato.plato_id = menu_plato.plato_id
WHERE asistencia.fecha_ingreso BETWEEN '2021-05-28 00:00:00' and '2021-09-01 00:00:00';

--EJERCICIO 3
SELECT nino_acudiente.acudiente_id, nino.nombres, COUNT(nino_acudiente.acudiente_id) AS cantidad FROM nino
    INNER JOIN nino_acudiente ON nino.nino_id = nino_acudiente.nino_id
    GROUP BY nino.nino_id
HAVING cantidad = 1;

--EJERCICIO 4
SELECT * 
    FROM nino 
WHERE 
    fecha_nacimiento = (SELECT MAX(t1.fecha_nacimiento) FROM nino as t1) 
OR fecha_nacimiento = (SELECT MIN(t2.fecha_nacimiento) FROM nino as t2);

--EJERCICIO 5
SELECT * FROM ingrediente WHERE ingrediente_id NOT IN (
	SELECT ingrediente_plato.ingrediente_id FROM ingrediente_plato
)

--EJERCICIO 6
UPDATE nino
    SET direccion_residencia = 'calle 2'
WHERE nino_id = 1;

--EJERCICIO 7
UPDATE nino
	JOIN nino_acudiente USING(nino_id)
	SET direccion_residencia = 'calle13'
WHERE nino_acudiente.parentezco_estudiante <> 'papa' 
and nino_acudiente.parentezco_estudiante <> 'mama'

--EJERCICIO 9
SELECT a.nino_id, COUNT(a.ingrediente_id) AS CantidadAlergias, b.nombres, b.apellidos,c.tel_contacto 
    FROM alergia_ingrediente_nino A, nino B, acudiente C, nino_acudiente D 
WHERE a.nino_id=b.nino_id AND b.nino_id=d.nino_id and c.acudiente_id=d.acudiente_id 
GROUP BY b.nino_id;

--EJERCICIO 10
SELECT SUM(plato.valor_plato) as Total FROM asistencia 
    INNER JOIN menu_asistencia ON menu_asistencia.asistencia_id = asistencia.asistencia_id
    INNER JOIN menu ON menu.menu_id = menu_asistencia.menu_id
    INNER JOIN menu_plato ON menu_plato.menu_id = menu_asistencia.menu_id
    INNER JOIN plato ON plato.plato_id = menu_plato.plato_id;