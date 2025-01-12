-- Tabla de Alejandro -- 




















-- Tabla de Kelvia --






















-- Tabla de Manuel ---




















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
