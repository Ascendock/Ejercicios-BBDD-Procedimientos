-- Ejercicios Wiki Procedimientos almacenados con parámetros de salida

-- Ejercicio 4 Wiki Procedimientos con parámetros de salida artistas_getNumAtracAnimal

DROP PROCEDURE IF EXISTS artistas_getNumAtracAnimal;
DELIMITER $$
CREATE PROCEDURE artistas_getNumAtracAnimal
(p_nombreArtista VARCHAR(50), p_apellidosArtista VARCHAR(100), OUT p_cadena VARCHAR(150))
COMMENT "Crea un procedimiento de nombre artistas_getNumAtracAnimal al que se le pase los apellidos y nombre de un artista y devuelva, 
empleando un parámetro de salida, el número de atracciones en las que trabaja y el número de animales que cuida 
(empleando el procedimiento del ejercicio 2) con el formato: nif:NumAtracciones:NumAnimales."
BEGIN

	DECLARE v_nifArtista CHAR(9);
    DECLARE v_numAnimales TINYINT DEFAULT 0;
    DECLARE v_numAtracciones TINYINT DEFAULT 0;
    
    SELECT nif
    INTO v_nifArtista
    FROM artistas
    WHERE nombre = p_nombreArtista  AND apellidos = p_apellidosArtista;
    
    CALL artistas_GetNumAnimalesCuida(v_nifArtista,v_numAnimales);
    
	SELECT COUNT(*)
    INTO v_numAtracciones
    FROM atracciones_artistas
    WHERE fecha_fin IS NULL AND  nif_artista = v_nifArtista;
    
    SET p_cadena = CONCAT(v_nifArtista," : ",v_numAtracciones," : ",v_numAnimales);

END$$
DELIMITER ;

CALL artistas_getNumAtracAnimal("Luis","Sanchez",@datos);
SELECT @datos