-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 10 Moodle Procedimientos sin parámetros atracciones_getStartDate

DROP PROCEDURE IF EXISTS atracciones_getStartDate;
DELIMITER $$
CREATE PROCEDURE atracciones_getStartDate()
COMMENT ""
BEGIN

	SELECT DATE_FORMAT(fecha_inicio, "%e %M %Y") AS fecha_inicio
    FROM atracciones;
    

END$$

CALL atracciones_getStartDate;