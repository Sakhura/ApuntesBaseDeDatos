-- BASE DE DATO CON INSTRUCCCIONES // ES SOLO A MODO DE EJEMPLO

-- Crear base de datos
CREATE DATABASE nombre_de_tu_base_de_datos;

-- Usar base de datos
USE nombre_de_tu_base_de_datos;

-- Crear tablas  
-- Ahora puedes crear tablas dentro de tu base de datos. Por ejemplo, vamos a crear dos tablas: empleados y departamentos.

CREATE TABLE empleados (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    salario DECIMAL(10, 2),
    departamento_id INT
);

CREATE TABLE departamentos (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50)
);

-- Insertar datos: Ahora insertaremos algunos datos en nuestras tablas.
INSERT INTO departamentos (nombre) VALUES ('Ventas'), ('Marketing'), ('TI');

INSERT INTO empleados (nombre, salario, departamento_id) VALUES
    ('Juan', 3000, 1),
    ('María', 3500, 2),
    ('Pedro', 4000, 3),
    ('Laura', 3200, 1);

-- Consultas con JOIN: Ahora, veamos algunas consultas que involucran JOIN para combinar datos de múltiples tablas.
-- Consulta 1: Obtener el nombre del empleado y el nombre del departamento al que pertenece

SELECT empleados.nombre AS nombre_empleado, departamentos.nombre AS nombre_departamento
FROM empleados
INNER JOIN departamentos ON empleados.departamento_id = departamentos.id;

-- Consulta 2: Obtener el nombre del departamento y la cantidad de empleados que pertenecen a cada departamento.

SELECT departamentos.nombre AS nombre_departamento, COUNT(empleados.id) AS cantidad_empleados
FROM departamentos
LEFT JOIN empleados ON departamentos.id = empleados.departamento_id
GROUP BY departamentos.id;
