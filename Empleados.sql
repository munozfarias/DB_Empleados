CREATE DATABASE empleados_db;
USE empleados_db;

-- Tabla de empleados
CREATE TABLE empleados (
id INT PRIMARY KEY NOT NULL,
nombre VARCHAR (100) NOT NULL,
departamento VARCHAR (100) NOT NULL,
salario INT NOT NULL
);

-- Insertar empleados
INSERT INTO empleados (id, nombre, departamento, salario)
VALUES
(1, 'Karuhat Sor Supawan', 'Ventas', 2000000),
(2, 'Dieselnoi Chor Thanasukarn', 'Padman', 2000000),
(3, 'Sylvie Von Duuglas-Ittu', 'Headcoach', 2000001),
(4, 'Yaiza Petchred Yodcutee', 'Pro Fighter', 3000000),
(5, 'Nong Rose', 'Manager', 2000000),
(6, 'Rodtang Jitmuangnon', 'Pro Fighter', 3500000),
(7, 'Buakaw Banchamek', 'Coach', 1900000),
(8, 'Sangtiennoi Sor Rungroj', 'Manager', 2500000),
(9, 'Stamp Fairtex', 'Ventas', 3000000),
(10, 'Saenchai PKSaenchaimuaythaigym', 'Padman', 2800000);

--  Actualizar salario
UPDATE empleados
SET salario = 3000.00
WHERE id = 3;

-- Proyectar departamento de ventas
SELECT *
FROM empleados
WHERE departamento = 'Ventas';

-- Promedio de salario por departamento
SELECT departamento, AVG(salario) as salario_promedio
FROM empleados
GROUP BY departamento;

-- Eliminar a empleado con id = 2
DELETE FROM emplados
WHERE id = 2;

-- Proyectar a empleados
SELECT * FROM empleados;

-- Proyectar a los salarios mas bajos en orden ascendente
SELECT * FROM empleados
ORDER BY salario ASC
LIMIT 2;

-- Set de comandos para manipular la base
DROP TABLE empleados;
SET SQL_SAFE_UPDATES = 0;
DELETE FROM empleados;
SET SQL_SAFE_UPDATES = 1;