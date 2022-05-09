-- Ejercicios Wiki Procedimientos almacenados con parámetros de salida

-- Ejercicio 3 Wiki Procedimientos con parámetros de salida animales_getNombreAforo

DROP PROCEDURE IF EXISTS animales_getNombreAforo;
DELIMITER $$
CREATE PROCEDURE animales_getNombreAforo(p_nombreAnimal VARCHAR(50),OUT p_cadena VARCHAR(150))
COMMENT "Crea un procedimiento de nombre animales_getNombreAforo al que se le pase el nombre de un animal y devuelva, empleando un parámetro 
de salida y haciendo uso del procedimiento creado en el ejercicio 1, de una cadena con el formato: NombreAnimal:peso:pista:aforo
Pista: Emplea la función CONCAT"
BEGIN

	DECLARE v_peso FLOAT;
    DECLARE v_nombrePista VARCHAR(50);
    DECLARE v_aforo SMALLINT;

	SELECT nombre_pista, peso
    INTO v_nombrePista, v_peso
    FROM animales
    WHERE nombre = p_nombreAnimal;
    
    CALL pistas_getAforo(v_nombrePista, v_aforo);
    
    SET p_cadena = CONCAT(p_nombreAnimal," : ", v_peso," : ", v_nombrePista," : ", v_aforo);

END$$
DELIMITER ;

CALL animales_getNombreAforo("Leo",@datos);
SELECT @datos;


