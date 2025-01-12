-- Tabla de Alejandro -- 
CREATE TABLE IF NOT EXISTS `Pilotos` (
    `codigo_piloto` INT AUTO_INCREMENT PRIMARY KEY,
    `nombre` VARCHAR(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci,
    `horas_vuelo` INT,
    `base_id` INT
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;


INSERT INTO `Pilotos` (`nombre`, `horas_vuelo`, `base_id`) VALUES ('Alejandro Juarez', 1500, 1), ('Miguel Rivas', 5000, 1), ('Carlos Lima', 1000, 1), ('Manuel Muñoz', 2000, 3), ('Kelvia Neves', 2000, 5), ('Fulano', 4000, 6);
















-- Tabla de Kelvia --






















-- Tabla de Manuel ---




















-- Tabla de Miguel --














-- Tabla de Carlos --
