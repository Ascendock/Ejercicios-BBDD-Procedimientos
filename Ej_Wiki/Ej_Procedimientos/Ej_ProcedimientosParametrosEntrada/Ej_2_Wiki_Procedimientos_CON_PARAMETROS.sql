-- Ejercicios Wiki Procedimientos almacenados con parámetros de entrada

-- Ejercicio 2 Wiki Procedimientos con parámetros de entrada artistas_getAnimalesPorNombreApel

DROP PROCEDURE IF EXISTS artistas_getAnimalesPorNombreApel;
DELIMITER $$
CREATE PROCEDURE artistas_getAnimalesPorNombreApel(p_nombreArtista VARCHAR (45), p_apellidoArtista VARCHAR(100))
COMMENT "Crea un procedimiento de nombre artistas_getAnimalesPorNombreApel que devuelva los animales que cuida un artista. 
Llevará como parámetro el nombre y apellidos del artista. Suponemos que el nombre y apellidos conforman una clave alternativa."
BEGIN

	DECLARE v_nifArtista CHAR(9);
    
    SELECT artistas.nif
    INTO v_nifArtista
    FROM artistas
    WHERE artistas.nombre = p_nombreArtista AND artistas.apellidos = p_apellidoArtista
    LIMIT 1;

	SELECT *
    FROM animales INNER JOIN animales_artistas
					ON animales.nombre = animales_artistas.nombre_animal
    WHERE animales_artistas.nif_artista = v_nifArtista;
    

END$$
DELIMITER ;

CALL artistas_getAnimalesPorNombreApel("Luis","Sanchez")