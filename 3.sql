-- Crear la base de datos
CREATE DATABASE IF NOT EXISTS integrador_cac;

-- Seleccionar la base de datos
USE integrador_cac;

-- Crear la tabla "oradores"
CREATE TABLE IF NOT EXISTS oradores (
    id_orador INT PRIMARY KEY AUTO_INCREMENT,
    nombre VARCHAR(255) NOT NULL,
    apellido VARCHAR(255) NOT NULL,
    mail VARCHAR(255) NOT NULL UNIQUE,
    tema VARCHAR(255),
    fecha_alta DATE,
    CONSTRAINT uq_mail UNIQUE (mail) -- Restricción para asegurar unicidad en el campo "mail"
);

-- Insertar 10 registros de ejemplo
INSERT INTO oradores (nombre, apellido, mail, tema, fecha_alta) VALUES
('Juan', 'Pérez', 'juan.perez@example.com', 'Tema 1', '2022-01-01'),
('María', 'Gómez', 'maria.gomez@example.com', 'Tema 2', '2022-02-15'),
('Carlos', 'López', 'carlos.lopez@example.com', 'Tema 3', '2022-03-20'),
('Ana', 'Martínez', 'ana.martinez@example.com', 'Tema 4', '2022-04-10'),
('Luis', 'Rodríguez', 'luis.rodriguez@example.com', 'Tema 5', '2022-05-05'),
('Laura', 'Sánchez', 'laura.sanchez@example.com', 'Tema 6', '2022-06-18'),
('Pedro', 'Fernández', 'pedro.fernandez@example.com', 'Tema 7', '2022-07-30'),
('Sofía', 'Díaz', 'sofia.diaz@example.com', 'Tema 8', '2022-08-12'),
('Diego', 'Hernández', 'diego.hernandez@example.com', 'Tema 9', '2022-09-25'),
('Elena', 'Vargas', 'elena.vargas@example.com', 'Tema 10', '2022-10-08');