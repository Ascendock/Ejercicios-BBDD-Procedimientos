-- Ejercicios Wiki Procedimientos almacenados con parámetros de entrada

-- Ejercicio 3 Wiki Procedimientos con parámetros de entrada atracciones_getListConAntiguedad

DROP PROCEDURE IF EXISTS atracciones_getListConAntiguedad;
DELIMITER $$
CREATE PROCEDURE atracciones_getListConAntiguedad(p_antiguedad TINYINT)
COMMENT "Crea un procedimiento de nombre atracciones_getListConAntiguedad que devuelva los datos de las atracciones 
que hayan comenzado hace un número de años con respecto a la fecha actual. Tendrás que hacer uso de alguna de las funciones Date Time. 
Intenta averiguar cual."
BEGIN

	SELECT *
    FROM atracciones
    WHERE fecha_inicio BETWEEN  DATE_SUB(CURDATE(), INTERVAL p_antiguedad YEAR) AND CURDATE()
    ORDER BY nombre;

END$$
DELIMITER ;

CALL atracciones_getListConAntiguedad();