-- Tabla de Alejandro -- 




















-- Tabla de Kelvia --






















-- Tabla de Manuel ---




















-- Tabla de Miguel --
DROP TABLE IF EXISTS bases;

CREATE TABLE bases (
    base_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(100),
    codigo VARCHAR(10),
    UNIQUE (codigo)
) ENGINE=InnoDB
CHARACTER SET utf8mb4
COLLATE utf8mb4_unicode_ci;

INSERT INTO bases (nombre, codigo) VALUES
('Base Internacional JFK', 'JFK'),
('Base Internacional LAX', 'LAX'),
('Base Internacional ORD', 'ORD'),
('Base Internacional ATL', 'ATL'),
('Base Internacional CDG', 'CDG');











-- Tabla de Carlos --
