DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_alejandro_juarez` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_alejandro_juarez`()
BEGIN

-- Consultas --

-- Consultas personales --

-- Interseccion --
SELECT * FROM Pilotos WHERE horas_vuelo > 2000 INTERSECT SELECT * FROM Pilotos WHERE base_id > 3;

-- Union --
SELECT * FROM Pilotos WHERE horas_vuelo < 2000 UNION SELECT * FROM Pilotos WHERE base_id <= 5;

-- Diferencia --
SELECT * FROM Pilotos WHERE horas_vuelo > 1500 EXCEPT SELECT * FROM Pilotos WHERE base_id < 5;

-- Agregación --
SELECT base_id, SUM(horas_vuelo) AS total_horas FROM Pilotos GROUP BY base_id;

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_kelvia_neves` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_kelvia_neves`()
BEGIN

-- Consultas --

--Unión Kelvia--

SELECT 
    avion_id, 
    codigo, 
    base_id 
FROM 
    avion 
WHERE 
    base_id <= 2

UNION

SELECT 
    avion_id, 
    codigo, 
    base_id 
FROM 
    avion 
WHERE 
    base_id > 2;

--Intersección Kelvia--

SELECT * FROM avion WHERE base_id >= 2
INTERSECT
SELECT * FROM avion WHERE base_id <= 3;

--Diferencia Kelvia--

SELECT * FROM avion WHERE base_id <= 2
EXCEPT
SELECT * FROM avion WHERE base_id > 1;

--Agregación Kelvia--

SELECT COUNT(*) AS total_aviones 
FROM avion;

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_carlos_alvarado` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_carlos_alvarado`()
BEGIN

-- Consultas Carlos Alvarado --

-- Intersección --

SELECT * FROM vuelo WHERE codigo_de_vuelo LIKE 'B%' INTERSECT SELECT * FROM vuelo WHERE destino = 'Alicante';

-- Diferencia --

SELECT * FROM vuelo WHERE codigo_de_vuelo LIKE 'B%' EXCEPT SELECT * FROM vuelo WHERE destino = 'Madrid';

-- Unión --

SELECT * FROM vuelo WHERE destino = 'Madrid' UNION SELECT * FROM vuelo WHERE destino = 'Alicante';

-- Agregación --

SELECT MAX(hora_de_vuelo) FROM vuelo;


END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_manuel_munoz` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_manuel_munoz`()
BEGIN

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_miguel_rivas` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_miguel_rivas`()
BEGIN

-- Consultas --

END //

DELIMITER ;
