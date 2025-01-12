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

-- Consultas --

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_miguel_rivas` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_miguel_rivas`()
BEGIN

-- Consultas --
-- Personales --
-- Union --
SELECT base_id, nombre, codigo, ciudad
FROM bases
WHERE codigo = 'JFK'

UNION

SELECT base_id, nombre, codigo, ciudad
FROM bases
WHERE codigo = 'LAX';

-- Intersección --
SELECT base_id, nombre, codigo, ciudad
FROM bases
WHERE codigo = 'JFK'

INTERSECT

SELECT base_id, nombre, codigo, ciudad
FROM bases
WHERE ciudad = 'Nueva York';

-- Diferencia --  
SELECT base_id, nombre, codigo, ciudad 
FROM bases 
WHERE codigo = 'JFK' OR codigo = 'ORD' OR codigo = 'LAX' 

EXCEPT  

SELECT base_id, nombre, codigo, ciudad 
FROM bases 
WHERE codigo = 'JFK' OR codigo = 'ORD';

-- Agregación -- 
SELECT ciudad, COUNT(*) AS total_bases
FROM bases
GROUP BY ciudad;

-- Reunión natural --   
-- Renunión natural por izquierda --  
-- Reunión natural por derecha --  
-- Producro cartesiano --  

END //

DELIMITER ;
