-- Ejercicios Wiki Procedimientos almacenados sin parámetros

-- Ejercicio 2 Wiki Procedimientos sin parámetros artistas_getListAnimales

DROP PROCEDURE IF EXISTS artistas_getListAnimales;
DELIMITER $$
CREATE PROCEDURE artistas_getListAnimales()
COMMENT ""
BEGIN

	SELECT artistas.nombre, artistas.nif, animales.nombre, animales.peso
    FROM artistas INNER JOIN animales_artistas
					ON artistas.nif = animales_artistas.nif_artista
				  INNER JOIN animales
					ON animales.nombre = animales_artistas.nombre_animal
	ORDER BY artistas.nif, animales.nombre;

END$$

CALL artistas_getListAnimales();