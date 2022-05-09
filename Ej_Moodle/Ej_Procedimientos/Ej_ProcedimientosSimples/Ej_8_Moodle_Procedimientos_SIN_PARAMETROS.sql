-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 8 Moodle Procedimientos sin parámetros atracciones_getListDatos

DROP PROCEDURE IF EXISTS atracciones_getListDatos;
DELIMITER $$
CREATE PROCEDURE atracciones_getListDatos()
COMMENT ""
BEGIN

	SELECT DISTINCT YEAR(fecha_) AS "Año de celebracion"
    FROM atraccion_dia
	WHERE nombre_atraccion = "El Gran Felino";

END$$

CALL atracciones_getListDatos;