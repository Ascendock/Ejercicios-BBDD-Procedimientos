-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 7 Moodle Procedimientos sin parámetros atracciones_getListDatos

DROP PROCEDURE IF EXISTS atracciones_getListDatos;
DELIMITER $$
CREATE PROCEDURE atracciones_getListDatos()
COMMENT ""
BEGIN

	SELECT CONCAT(nombre," > ",fecha_inicio," : ",ganancias) AS "nombre > fecha_inicio : ganancias"
    FROM atracciones;

END$$

CALL atracciones_getListDatos;