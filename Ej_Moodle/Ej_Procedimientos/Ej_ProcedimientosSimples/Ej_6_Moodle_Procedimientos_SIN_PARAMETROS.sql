-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 1 Moodle Procedimientos sin parámetros animales_getListDatos

DROP PROCEDURE IF EXISTS animales_getListDatos;
DELIMITER $$
CREATE PROCEDURE animales_getListDatos()
COMMENT "Muestra una columna con los datos y formato nombre - tipo - anhos : peso"
BEGIN

	SELECT CONCAT(nombre," - ",tipo," - ",anhos," : ",peso) as "Nombre-tipo-edad:peso"
    FROM animales;

END$$

CALL animales_getListDatos();

