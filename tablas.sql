-- Tabla de Alejandro -- 




















-- Tabla de Kelvia --






















-- Tabla de Manuel ---




















-- Tabla de Miguel --














-- Tabla de Carlos --
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
