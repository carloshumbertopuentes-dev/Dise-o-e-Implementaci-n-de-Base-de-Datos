CREATE DATABASE registro_alumnos;
USE registro_alumnos;

CREATE TABLE Alumnos (
    id_alumno INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    fecha_nacimiento DATE NOT NULL
);

CREATE TABLE Padres (
    id_padre INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL,
    apellido VARCHAR(50) NOT NULL,
    telefono VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE Alumno_Padre (
    id_alumno INT,
    id_padre INT,
    parentesco VARCHAR(20) NOT NULL,
    PRIMARY KEY (id_alumno, id_padre),
    FOREIGN KEY (id_alumno) REFERENCES Alumnos(id_alumno) ON DELETE CASCADE,
    FOREIGN KEY (id_padre) REFERENCES Padres(id_padre) ON DELETE CASCADE
);

INSERT INTO Alumnos (nombre, apellido, fecha_nacimiento) VALUES
('Juan', 'Pérez', '2010-05-12'),
('Ana', 'Gómez', '2011-08-22'),
('Luis', 'Pérez', '2012-03-15'),
('María', 'Rodríguez', '2010-11-30'),
('Carlos', 'Sánchez', '2013-01-25'),
('Elena', 'Beltrán', '2011-07-14'),
('Pedro', 'Alba', '2012-09-05');

INSERT INTO Padres (nombre, apellido, telefono, email) VALUES
('Carlos', 'Pérez', '555-1234', 'carlos.perez@email.com'),
('María', 'López', '555-5678', 'maria.lopez@email.com'),
('Jorge', 'Rodríguez', '555-9012', 'jorge.rod@email.com'),
('Sofia', 'Sánchez', '555-3456', 'sofia.san@email.com'),
('Andrés', 'Beltrán', '555-7890', 'andres.b@email.com'),
('Lucía', 'Díaz', '555-2345', 'lucia.diaz@email.com'),
('Miguel', 'Alba', '555-6789', 'miguel.alba@email.com');

INSERT INTO Alumno_Padre (id_alumno, id_padre, parentesco) VALUES
(1, 1, 'Padre'),
(2, 2, 'Madre'),
(3, 1, 'Padre'),
(4, 3, 'Padre'),
(5, 4, 'Madre'),
(6, 5, 'Padre'),
(7, 7, 'Padre');