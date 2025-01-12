DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_alejandro_juarez` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_alejandro_juarez`()
BEGIN

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_kelvia_neves` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_kelvia_neves`()
BEGIN

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_carlos_alvarado` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_carlos_alvarado`()
BEGIN

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_manuel_munoz` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_manuel_munoz`()
BEGIN

-- UNION --

SELECT nombre FROM miembros_de_tripulacion AS m1 UNION SELECT nombre FROM miembros_de_tripulacion AS m2;

-- INTERSECCIÓN --
SELECT inicio_vuelo FROM miembros_de_tripulacion AS m1 INTERSECT SELECT final_vuelo FROM miembros_de_tripulacion AS m2;

-- DIFERENCIA --
SELECT inicio_vuelo FROM miembros_de_tripulacion AS m1 EXCEPT SELECT final_vuelo FROM miembros_de_tripulacion AS m2;

-- AGREGACION --
SELECT AVG(inicio_vuelo) FROM miembros_de_tripulacion;

-- REUNION NATURAL --
 SELECT * FROM miembros_de_tripulacion NATURAL JOIN miembros_de_tripulacion AS m2;

-- Renunión natural por izquierda --
SELECT * FROM miembros_de_tripulacion m1 LEFT JOIN miembros_de_tripulacion AS m2 ON m1.inicio_vuelo = m2.inicio_vuelo;

-- Renunión natural por derecha --
SELECT m1.final_vuelo FROM miembros_de_tripulacion m1 RIGHT JOIN miembros_de_tripulacion AS m2 ON m1.inicio_vuelo = m2.inicio_vuelo;

-- PRODUCTO CARTESIANO --
SELECT * FROM miembros_de_tripulacion m1 CROSS JOIN miembros_de_tripulacion AS m2;


END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_miguel_rivas` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_miguel_rivas`()
BEGIN

-- Consultas --

END //

DELIMITER ;
