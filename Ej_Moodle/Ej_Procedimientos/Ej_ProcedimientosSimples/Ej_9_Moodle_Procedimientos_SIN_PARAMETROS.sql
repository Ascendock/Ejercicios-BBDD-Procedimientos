-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 9 Moodle Procedimientos sin parámetros atracciones_getNumByAnho

DROP PROCEDURE IF EXISTS atracciones_getNumByAnho;
DELIMITER $$
CREATE PROCEDURE atracciones_getNumByAnho()
COMMENT ""
BEGIN

	SELECT COUNT(*)
    FROM atraccion_dia
    WHERE YEAR(fecha_) = 2000;

END$$

CALL atracciones_getNumByAnho;