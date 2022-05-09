-- Ejercicios Wiki Procedimientos almacenados sin parámetros

-- Ejercicio 3 Wiki Procedimientos sin parámetros atracciones_getListConAntiguedad

DROP PROCEDURE IF EXISTS atracciones_getListConAntiguedad;
DELIMITER $$
CREATE PROCEDURE atracciones_getListConAntiguedad()
COMMENT ""
BEGIN

	SELECT *
    FROM atracciones
    WHERE fecha_inicio BETWEEN DATE_SUB(CURDATE(), INTERVAL 5 YEAR) AND CURDATE();

END$$

CALL atracciones_getListConAntiguedad();