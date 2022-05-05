-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 1 Moodle Procedimientos sin parámetros artistas_getList

DROP PROCEDURE IF EXISTS artistas_getList;
DELIMITER $$
CREATE PROCEDURE artistas_getList()
COMMENT "Muestra el nombre completo de los artistas ordenados alfabeticamente"
BEGIN

		SELECT CONCAT(apellidos,",",nombre) as Apellidos_Nombre
        FROM ARTISTAS
        ORDER BY Apellidos_Nombre ASC;

END$$

CALL artistas_getList();