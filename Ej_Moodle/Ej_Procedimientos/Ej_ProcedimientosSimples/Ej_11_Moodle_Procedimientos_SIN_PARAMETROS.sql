-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 10 Moodle Procedimientos sin parámetros atracciones_getDiaByAtracc

DROP PROCEDURE IF EXISTS atracciones_getDiaByAtracc;
DELIMITER $$
CREATE PROCEDURE atracciones_getDiaByAtracc()
COMMENT ""
BEGIN

	SELECT DATE_FORMAT(fecha_, "%W  %c / %y") AS fechas_celebracion
    FROM atraccion_dia
    WHERE nombre_atraccion = "El Gran Felino";

END$$

CALL atracciones_getDiaByAtracc();
