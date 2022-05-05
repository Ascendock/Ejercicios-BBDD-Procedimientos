-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 1 Moodle Procedimientos sin parámetros animales_getListNome

DROP PROCEDURE IF EXISTS ANIMALES_getListNome;
DELIMITER $$
CREATE PROCEDURE ANIMALES_getListNome()
COMMENT "Crea un procedimiento que muestra los nombres de los animales 
ordenados por peso en orden descendente"
BEGIN
		SELECT ANIMALES.nombre, ANIMALES.peso
        FROM ANIMALES
        ORDER BY ANIMALES.peso DESC;

END$$
DELIMITER ;

CALL ANIMALES_getListNome;