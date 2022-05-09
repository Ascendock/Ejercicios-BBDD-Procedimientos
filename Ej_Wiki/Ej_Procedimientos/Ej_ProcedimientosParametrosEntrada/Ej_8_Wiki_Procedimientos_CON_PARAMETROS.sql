-- Ejercicios Wiki Procedimientos almacenados con parámetros de entrada

-- Ejercicio 8 Wiki Procedimientos con parámetros de entrada nombre_pistasDelete

DROP PROCEDURE IF EXISTS nombre_pistasDelete;
DELIMITER $$
CREATE PROCEDURE nombre_pistasDelete(p_nombre VARCHAR(50), p_aforo SMALLINT)
COMMENT "Crea un procedimiento de nombre pistas_delete que borre una pista por su nombre. Haz que borre en base al patrón 
nombre% (empleando el Like).
Borra la atracción que hayas añadido en el ejercicio 6 mandando las primeras letras 
(ten cuidado de que no haya otra atracción con esas letras al comienzo).
Pista: Emplea la función CONCAT para el LIKE"
BEGIN

	DELETE FROM pistas
    WHERE nombre LIKE CONCAT(p_nombre, "%");
    
    SELECT ROW_COUNT() AS pistas_eliminadas;
    

END$$
DELIMITER ;

CALL nombre_pistasDelete("El gran mi",240);