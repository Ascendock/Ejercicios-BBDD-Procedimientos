-- Ejercicios Wiki Procedimientos almacenados con parámetros de entrada

-- Ejercicio 7 Wiki Procedimientos con parámetros de entrada atracciones_update

DROP PROCEDURE IF EXISTS atracciones_update;
DELIMITER $$
CREATE PROCEDURE atracciones_update
(p_nombreAtraccion VARCHAR (50), p_fechaInicio DATE, p_ganancias DECIMAL(8,2))
COMMENT " Crea un procedimiento de nombre atracciones_update que permita modificar los datos de una atracción 
(no se permite actualizar su clave primaria).
Modifica la fecha de inicio de la atracción 'El gran felino' y ponla un día después de la que tiene ahora mismo.
Pista: Tendrás que guardar las ganancias y la fecha de inicio que tiene para poder enviar ese dato al procedimiento.
Comprueba como al llamar al método con una atracción que no existe, row_count va a devolver 0."
BEGIN

	UPDATE atracciones
    SET fecha_inicio = p_fechaInicio, ganancias = p_ganancias
    WHERE nombre = p_nombreAtraccion;
    
    SELECT ROW_COUNT() AS filas_añadidas;
	


END$$
DELIMITER ;

CALL atracciones_update("El pato loco","2015-04-22", 1230.55);