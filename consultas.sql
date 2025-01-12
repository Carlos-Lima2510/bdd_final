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

-- Reunion Natural --

SELECT * FROM vuelo NATURAL JOIN avion;

-- Reunión Natural por la izquierda --

SELECT v.codigo_de_vuelo, v.origen, v.destino, v.hora_de_vuelo, a.codigo, a.base_id FROM vuelo AS v LEFT JOIN avion AS a ON v.avion_id = a.avion_id LEFT JOIN bases AS b ON a.base_id = b.base_id;

-- Reunión Natural por la derecha --

SELECT v.codigo_de_vuelo, v.origen, v.destino, v.hora_de_vuelo, a.codigo, a.base_id FROM vuelo AS v RIGHT JOIN avion AS a ON v.avion_id = a.avion_id RIGHT JOIN bases AS b ON a.base_id = b.base_id;

-- Producto Cartesiano -- 

SELECT * FROM vuelo CROSS JOIN avion;


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

-- Grupales --
-- Reunión natural --   
SELECT * FROM bases NATURAL JOIN vuelo;

-- Renunión natural por izquierda --  
SELECT 
    Pilotos.codigo_piloto,
    Pilotos.nombre AS nombre_piloto,
    Pilotos.horas_vuelo,
    bases.nombre AS nombre_base,
    bases.ciudad
FROM 
    bases
LEFT JOIN 
    Pilotos
ON 
    bases.base_id = Pilotos.base_id;

-- Reunión natural por derecha -- 
SELECT 
    Pilotos.codigo_piloto,
    Pilotos.nombre AS nombre_piloto,
    Pilotos.horas_vuelo,
    bases.nombre AS nombre_base,
    bases.ciudad
FROM 
    bases
RIGHT JOIN 
    Pilotos
ON 
    bases.base_id = Pilotos.base_id;

-- Producro cartesiano --  
SELECT 
    Pilotos.codigo_piloto,
    Pilotos.nombre AS nombre_piloto,
    Pilotos.horas_vuelo,
    bases.base_id,
    bases.nombre AS nombre_base,
    bases.ciudad
FROM 
    Pilotos
CROSS JOIN 
    bases;


END //

DELIMITER ;
