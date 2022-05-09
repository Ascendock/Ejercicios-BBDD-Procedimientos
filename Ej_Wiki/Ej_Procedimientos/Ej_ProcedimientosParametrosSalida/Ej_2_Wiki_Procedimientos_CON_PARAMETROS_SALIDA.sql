-- Ejercicios Wiki Procedimientos almacenados con parámetros de salida

-- Ejercicio 1 Wiki Procedimientos con parámetros de salida artistas_getNumAnimalesCuida

DROP PROCEDURE IF EXISTS artistas_getNumAnimalesCuida;
DELIMITER $$
CREATE PROCEDURE artistas_getNumAnimalesCuida(p_nifArtista CHAR(9), OUT p_numAnimalesCuida TINYINT)
COMMENT "Crea un procedimiento de nombre artistas_getNumAnimalesCuida al que se le pase el nif de un artista y 
que devuelva en forma de parámetro de salida a cuantos animales cuida."
BEGIN

	SELECT COUNT(*)
    INTO p_numAnimalesCuida
    FROM animales_artistas
    WHERE nif_artista = p_nifArtista;

END$$
DELIMITER ;

CALL artistas_getNumAnimalesCuida("11111111A",@dato);
SELECT @dato
