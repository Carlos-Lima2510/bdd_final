DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_alejandro_juarez` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_alejandro_juarez`()
BEGIN

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_kelvia_neves` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_kelvia_neves`()
BEGIN

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_carlos_alvarado` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_carlos_alvarado`()
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

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_manuel_munoz`()
BEGIN

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_miguel_rivas` //

CREATE DEFINER=`carlos.alvarado`@`%` PROCEDURE `consultas_miguel_rivas`()
BEGIN

-- Consultas --

END //

DELIMITER ;
