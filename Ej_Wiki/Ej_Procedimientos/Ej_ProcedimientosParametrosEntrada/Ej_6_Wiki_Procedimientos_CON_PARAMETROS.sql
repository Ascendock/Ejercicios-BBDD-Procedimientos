-- Ejercicios Wiki Procedimientos almacenados con parámetros de entrada

-- Ejercicio 6 Wiki Procedimientos con parámetros de entrada pistas_add

DROP PROCEDURE IF EXISTS pistas_add;
DELIMITER $$
CREATE PROCEDURE pistas_add(p_nombrePista VARCHAR(50), p_aforo SMALLINT)
COMMENT "Crea un procedimiento de nombre pistas_add y que añada una nueva pista.
Nota: Aún no vimos la validación de datos que tendría que darse en el paso de parámetros. En este caso podríamos tener condiciones 
if en el que se comprueba sin el aforo es mayor que cero....
Se puede hacer uso de la función ROW_COUNT() para saber cuantas filas fueron añadidas, borradas o modificadas.
Importante: Los parámetros deben de tener el mismo tipo de dato y tamaño que el que está definido a nivel de columnas en la tabla PISTAS."
BEGIN

	INSERT INTO pistas (nombre, aforo)
	VALUES (p_nombrePista, p_aforo);
    
    SELECT ROW_COUNT() AS lineas_modificadas;
    
END$$
DELIMITER ;

CALL pistas_add("El gran misil", 240);