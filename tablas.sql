-- Tabla de Alejandro -- 




















-- Tabla de Kelvia --






















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
('Base Internacional CDG', 'CDG', 'París'),











-- Tabla de Carlos --
