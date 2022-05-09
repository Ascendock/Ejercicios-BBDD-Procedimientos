-- Ejercicios Wiki Procedimientos almacenados con parámetros de entrada

-- Ejercicio 4 Wiki Procedimientos con parámetros de entrada artistas_getListMasAnimalesCuida

DROP PROCEDURE IF EXISTS artistas_getListMasAnimalesCuida;
DELIMITER $$
CREATE PROCEDURE artistas_getListMasAnimalesCuida(p_numAnimales TINYINT)
COMMENT "Crea un procedimiento de nombre artistas_getListMasAnimalesCuida que devuelva los datos del/os artista/s que cuidan a más animales 
de los indicados (parámetro que se le envía). Pista: Como la consulta puede devolver más de un artista no podremos hacer uso de INTO...."
BEGIN

	SELECT *
    FROM artistas
    WHERE nif IN (SELECT nif_artista FROM animales_artistas GROUP BY nif_artista HAVING COUNT(*)>p_numAnimales)
    GROUP BY nif;


END$$
DELIMITER ;

CALL artistas_getListMasAnimalesCuida(1);