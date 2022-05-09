-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 1 Moodle Procedimientos sin parámetros atracciones_getListByArtista()

DROP PROCEDURE IF EXISTS atracciones_getListByArtista;
DELIMITER $$
CREATE PROCEDURE atracciones_getListByArtista()
COMMENT "Muestra las atracciones en las que trabaja el artista con NIF 33333333C ordenado 
por el nombre de la atraccion"
BEGIN

	SELECT ATRACCIONES_ARTISTAS.nombre_atraccion
    FROM ATRACCIONES_ARTISTAS
    WHERE ATRACCIONES_ARTISTAS.nif_artista = "33333333C"
    ORDER BY ATRACCIONES_ARTISTAS.nombre_atraccion ASC;

END$$

CALL atracciones_getListByArtista();