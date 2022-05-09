-- Ejercicios Wiki Procedimientos almacenados con parámetros de salida

-- Ejercicio 1 Wiki Procedimientos con parámetros de salida pistas_getAforo

DROP PROCEDURE IF EXISTS pistas_getAforo;
DELIMITER $$
CREATE PROCEDURE pistas_getAforo(p_nombre VARCHAR(50), OUT p_aforo SMALLINT)
COMMENT "Crea un procedimiento de nombre pistas_getAforo al que se le pase el nombre de una pista y devuelve en forma de 
parámetro de salida su aforo."
BEGIN

	SELECT aforo
    INTO p_aforo
    FROM pistas
    WHERE nombre = p_nombre;

END$$
DELIMITER ;

CALL pistas_getAforo("LATERAL1",@dato);
SELECT @dato;

