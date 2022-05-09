-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 11 Moodle Procedimientos sin parámetros artistas_getListAtraccDatos

DROP PROCEDURE IF EXISTS artistas_getListAtraccDatos;
DELIMITER $$
CREATE PROCEDURE artistas_getListAtraccDatos()
COMMENT "Crea un procedemento de nome artistas_getListAtraccDatos que amose o nif, data de inicio
e data fin dos artistas que empezaron a traballar no mes de Marzo. (Emprega a función
MONTH e DATE_FORMAT)"
BEGIN

	SELECT nif_artista, fecha_inicio, fecha_fin
    FROM atracciones_artistas
	WHERE MONTH(DATE_FORMAT(fecha_inicio, "%c")=3);
END$$

CALL artistas_getListAtraccDatos();
