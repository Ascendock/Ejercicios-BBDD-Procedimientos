-- Ejercicios Moodle Procedimientos almacenados sin parámetros

-- Ejercicio 1 Moodle Procedimientos sin parámetros atracciones_getSumEspectGanancByAtracc

DROP PROCEDURE IF EXISTS atracciones_getSumEspectGanancByAtracc;
DELIMITER $$
CREATE PROCEDURE atracciones_getSumEspectGanancByAtracc()
COMMENT "Devuelve todas las ganancias y espectadores de la atraccion el gran felino"
BEGIN

    SELECT DISTINCT ATRACCIONES.nombre,SUM(ATRACCIONES.ganancias) as Gan_totales,SUM(ATRACCION_DIA.num_espectadores) as espect_totales
    FROM ATRACCIONES INNER JOIN ATRACCION_DIA
			ON ATRACCIONES.nombre = ATRACCION_DIA.nombre_atraccion
    WHERE ATRACCIONES.nombre = "El Gran Felino"
    ORDER BY ATRACCIONES.ganancias;

END$$

CALL atracciones_getSumEspectGanancByAtracc();
