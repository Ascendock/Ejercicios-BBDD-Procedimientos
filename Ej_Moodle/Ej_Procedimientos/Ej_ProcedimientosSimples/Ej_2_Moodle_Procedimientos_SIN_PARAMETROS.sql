-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 1 Moodle Procedimientos sin parámetros pistas_getList()

DROP PROCEDURE IF EXISTS pistas_getList;
DELIMITER $$
CREATE PROCEDURE pistas_getList()
COMMENT "Muestra el nombre y el aforo de las pistas ordenado por el 
nombre de manera ascendente"
BEGIN
	
    SELECT PISTAS.nombre, PISTAS.aforo
    FROM PISTAS
    ORDER BY PISTAS.nombre ASC;
    
END$$

CALL pistas_getList();