-- Tabla de Alejandro -- 
DROP TABLE IF EXISTS Pilotos;
CREATE TABLE IF NOT EXISTS `Pilotos` (
    `codigo_piloto` INT AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
    `horas_vuelo` INT,
    `base_id` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `Pilotos` (`nombre`, `horas_vuelo`, `base_id`) VALUES ('Alejandro Juarez', 1500, 1), ('Miguel Rivas', 5000, 1), ('Carlos Lima', 1000, 1), ('Manuel Muñoz', 2000, 3), ('Kelvia Neves', 2000, 5), ('Fulano', 4000, 6);

-- Tabla de Kelvia --
DROP TABLE IF EXISTS avion;
CREATE TABLE avion (
    avion_id INT AUTO_INCREMENT PRIMARY KEY,
    codigo VARCHAR(50),
    base_id INT
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO avion (codigo, base_id) VALUES
('BOEING-747', 1),
('AIRBUS-A320', 2),
('EMBRAER-190', 3);

-- Tabla de Manuel ---

DROP TABLE IF EXISTS miembros_de_tripulacion;
CREATE TABLE IF NOT EXISTS `miembros_de_tripulacion`( codigo_miembro INT AUTO_INCREMENT NOT NULL, nombre varchar(63) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL, `inicio_vuelo` TIME, `final_vuelo` TIME, PRIMARY KEY(`codigo_miembro`)) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO miembros_de_tripulacion (nombre, inicio_vuelo, final_vuelo) VALUES ("Ana Maria", "12:00:00", "17:00:00"), ("Juan Carlos", "08:00:00", "13:00:00"), ("Sofia", NULL, "18:00:00"), ("Carlos", "09:00:00", "14:00:00"), ("Luis", "12:00:00", "17:00:00"), ("Mariana", "10:00:00", NULL), ("Fernanda", "07:00:00", "12:00:00"), ("Pedro", "11:00:00", "16:00:00"), ("Daniel", "09:00:00", "14:00:00"), ("Laura", "08:00:00", "13:00:00"), ("Gabriel", "07:00:00", "12:00:00");

-- Tabla de Miguel --
DROP TABLE IF EXISTS bases;

CREATE TABLE bases (
    base_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    codigo VARCHAR(10),
    ciudad VARCHAR(100),
    UNIQUE (codigo)
) ENGINE=InnoDB
CHARACTER SET utf8mb4
COLLATE utf8mb4_general_ci;

INSERT INTO bases (nombre, codigo, ciudad) VALUES
('Base Internacional JFK', 'JFK', 'Nueva York'),
('Base Internacional LAX', 'LAX', 'Los Ángeles'),
('Base Internacional ORD', 'ORD', 'Chicago'),
('Base Internacional ATL', 'ATL', 'Atlanta'),
('Base Internacional CDG', 'CDG', 'París'),
('Base Internacional MAD', 'MAD', 'Madrid');

-- Tabla de Carlos --
DROP TABLE IF EXISTS vuelo;
CREATE TABLE IF NOT EXISTS vuelo (
    vuelo_id INT PRIMARY KEY AUTO_INCREMENT,
    codigo_de_vuelo CHAR(7) NOT NULL,
    origen VARCHAR(150) NOT NULL,
    destino VARCHAR(200) NOT NULL,
    hora_de_vuelo TIME NOT NULL,
    avion_id int NOT NULL,
    codigo_piloto int NOT NUll,
    codigo_miembro int NOT NULL
) ENGINE=InnoDB CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

INSERT INTO vuelo (codigo_de_vuelo, origen, destino, hora_de_vuelo, avion_id, codigo_piloto, codigo_miembro)
VALUES ('BA-1034', "Palma", "Alicante", "13:50:00", 1, 1,1),
('BA-1035', "Palma", "Madrid", "16:00:00", 2, 2,3);


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


-- Consultas grupales --

-- Reunion natural --
SELECT * FROM Pilotos NATURAL JOIN vuelo;

-- Reunion natural por la izquierda --
SELECT Pilotos.codigo_piloto, Pilotos.nombre, Pilotos.horas_vuelo, Pilotos.base_id, vuelo.vuelo_id, vuelo.codigo_de_vuelo, vuelo.origen, vuelo.destino, vuelo.hora_de_vuelo, vuelo.avion_id, vuelo.codigo_miembro FROM Pilotos LEFT JOIN vuelo ON Pilotos.codigo_piloto = vuelo.codigo_piloto;

-- Reunion natural por la derecha --
SELECT Pilotos.codigo_piloto, Pilotos.nombre, Pilotos.horas_vuelo, Pilotos.base_id, vuelo.vuelo_id, vuelo.codigo_de_vuelo, vuelo.origen, vuelo.destino, vuelo.hora_de_vuelo, vuelo.avion_id, vuelo.codigo_miembro FROM Pilotos RIGHT JOIN vuelo ON Pilotos.codigo_piloto = vuelo.codigo_piloto;

-- Producto cartesiano --
SELECT Pilotos.codigo_piloto, Pilotos.nombre, Pilotos.horas_vuelo, Pilotos.base_id, vuelo.vuelo_id, vuelo.codigo_de_vuelo, vuelo.origen, vuelo.destino, vuelo.hora_de_vuelo, vuelo.avion_id, vuelo.codigo_miembro FROM Pilotos CROSS JOIN vuelo;

END //

DELIMITER ;

DELIMITER //

DROP PROCEDURE IF EXISTS `consultas_kelvia_neves` //

CREATE DEFINER=`root`@`%` PROCEDURE `consultas_kelvia_neves`()
BEGIN

-- Consultas Kelvia Neves --

-- Unión Kelvia --

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

-- Intersección Kelvia --

SELECT * FROM avion WHERE base_id >= 2
INTERSECT
SELECT * FROM avion WHERE base_id <= 3;

-- Diferencia Kelvia --

SELECT * FROM avion WHERE base_id <= 2
EXCEPT
SELECT * FROM avion WHERE base_id > 1;

-- Agregación Kelvia --

SELECT COUNT(*) AS total_aviones 
FROM avion;

-- Reunion natural Kelvia --

SELECT *
FROM avion
NATURAL JOIN Pilotos;

-- Reunion natural por la izquierda Kelvia --

SELECT *
FROM vuelo
NATURAL LEFT JOIN avion;

-- Reunion natural por la derecha Kelvia --

SELECT *
FROM vuelo
NATURAL RIGHT JOIN avion;

-- Producto cartesiano Kelvia --

SELECT *
FROM vuelo
CROSS JOIN avion;

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
SELECT codigo_miembro FROM miembros_de_tripulacion NATURAL JOIN vuelo;

-- Renunión natural por izquierda --
SELECT * FROM miembros_de_tripulacion m1 LEFT JOIN vuelo AS v ON m1.codigo_miembro = v.codigo_miembro;
-- Renunión natural por derecha --
SELECT * FROM miembros_de_tripulacion m1 RIGHT JOIN vuelo AS v ON m1.codigo_miembro = v.codigo_miembro;
-- PRODUCTO CARTESIANO --
SELECT * FROM miembros_de_tripulacion m1 CROSS JOIN Pilotos;

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
