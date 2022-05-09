-- Ejercicios Wiki Procedimientos almacenados con parámetros de entrada

-- Ejercicio 1 Wiki Procedimientos con parámetros de entrada artistas_getAnimalesPorNif

DROP PROCEDURE IF EXISTS artistas_getAnimalesPorNif;
DELIMITER $$
CREATE PROCEDURE artistas_getAnimalesPorNif(p_nifArtista char(9))
COMMENT "Crea un procedimiento de nombre artistas_getAnimalesPorNif que devuelva los animales que cuida un artista. 
Llevará como parámetro el nif de artista."
BEGIN

	SELECT animales.nombre
    FROM animales INNER JOIN animales_artistas
				ON animales.nombre = animales_artistas.nombre_animal
	WHERE animales_artistas.nif_artista = p_nifArtista;

END$$
DELIMITER ;

CALL artistas_getAnimalesPorNif("22222222B");

