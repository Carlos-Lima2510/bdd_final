-- Tabla de Alejandro -- 
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
('Base Internacional CDG', 'CDG', 'París');











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
