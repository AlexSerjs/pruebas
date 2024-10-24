use alumnos_db
CREATE TABLE alumnos (
    id_alumno INT AUTO_INCREMENT PRIMARY KEY,      
    nombre_completo VARCHAR(100) NOT NULL,         
    email VARCHAR(100) NOT NULL UNIQUE,            
    password VARCHAR(255) NOT NULL,                
    grado VARCHAR(50) NOT NULL,                    
    es_delegado BOOLEAN NOT NULL DEFAULT 0         
);

INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('Ana García', 'ana.garcia@example.com', 'password123', 'Desarrollo de Aplicaciones Multiplataforma', 1);
INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('Carlos Hernández', 'carlos.hernandez@example.com', 'password456', 'Administración de Sistemas Informáticos', 0);
INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('María López', 'maria.lopez@example.com', 'password789', 'Desarrollo de Aplicaciones Web', 0);
INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('Luis Martínez', 'luis.martinez@example.com', 'miClave321', 'Marketing y Publicidad', 0);
INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('Elena Pérez', 'elena.perez@example.com', 'claveSegura998', 'Educación Infantil', 0);
INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('Javier Sánchez', 'javier.sanchez@example.com', 'claveSuper123', 'Gestión de Ventas y Espacios Comerciales', 0);
INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('Laura Fernández', 'laura.fernandez@example.com', 'superClave454', 'Administración y Finanzas', 0);
INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('Daniel Gómez', 'daniel.gomez@example.com', 'claveFuerte768', 'Desarrollo de Aplicaciones Multiplataforma', 0);
INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('Paula Ortiz', 'paula.ortiz@example.com', 'miClave987', 'Desarrollo de Aplicaciones Web', 1);
INSERT INTO alumnos (nombre_completo, email, password, grado, es_delegado)
VALUES ('Raúl Torres', 'raul.torres@example.com', 'superPass123', 'Gestión de Ventas y Espacios Comerciales', 0);

SELECT * FROM alumnos;
