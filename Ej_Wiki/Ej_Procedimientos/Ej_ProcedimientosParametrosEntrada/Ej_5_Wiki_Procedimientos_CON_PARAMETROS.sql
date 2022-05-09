-- Ejercicios Wiki Procedimientos almacenados con parámetros de entrada

-- Ejercicio 5 Wiki Procedimientos con parámetros de entrada atracciones_getListPorFecha

DROP PROCEDURE IF EXISTS atracciones_getListPorFecha;
DELIMITER $$
CREATE PROCEDURE atracciones_getListPorFecha(p_fecha char(10))
COMMENT "Crea un procedimiento de nombre atracciones_getListPorFecha que devuelva los datos de las atracciones que han comenzado 
a partir de la fecha indicada. Pista: Recordar que las fechas son tratadas como cadenas...y tener en cuenta el formato.
Añade una nueva atracción con la fecha de inicio actual.
Llama al procedimiento empleando la fecha actual menos 3 días (haz uso de la función DATE_SUB y curdate)"
BEGIN

	SELECT *
    FROM atracciones
    WHERE fecha_inicio >= p_fecha;

END$$
DELIMITER ;

CALL atracciones_getListPorFecha("2001-01-01");
CALL atracciones_getListPorFecha(DATE_SUB(CURDATE(), INTERVAL 3 DAY));
