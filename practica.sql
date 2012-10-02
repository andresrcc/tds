\echo Creando la tabla...

CREATE TABLE empleado(

cedula varchar(80),

nombre varchar(80),

edad int,

cargo varchar(80),

salario int,

direccion varchar(80)

);

\echo Insertando valores...

INSERT INTO empleado VALUES ('V-17704136', 'Andres', 25,'Programador',4000,'Caurimare');

INSERT INTO empleado VALUES ('V-17402017', 'Alejandro', 26,'Programador',4500,'Ocumare');

INSERT INTO empleado VALUES ('V-15842316', 'Jesus', 32,'Lider de Proyecto',7000,'Los Teques');

INSERT INTO empleado VALUES ('V-5432190', 'Leonid', 43,'Gerente',20000,'Chacao');

INSERT INTO empleado VALUES ('V-7898235', 'Rosseline', 34,'Coordinador',20000,'Chacaito');

\echo Prueba de consultas basicas de SQL

\echo Seleccionando todos los empleados

SELECT * FROM empleado;

\echo Borrando las filas cuyos empleados ganan 20000 de salario
DELETE FROM empleado WHERE salario = 20000;

\echo Actualizando edad a empleado con nombre jesus
UPDATE empleado
SET edad = 57 WHERE nombre = 'Jesus';

\echo Seleccionando el empleado con maximo salario
SELECT max(salario) from empleado;

\echo Creando predicado difuso joven...

CREATE FUZZY PREDICATE joven ON 0 .. 100 AS (0,0,25,50);

\echo Probando el predicado. Seleccionar jovenes.
SELECT * FROM empleado WHERE edad = joven;

\echo Creando modificador muy
CREATE MODIFIER muy AS POWER 2;

\echo Probando modificador. Seleccionar muy jovenes.
SELECT nombre FROM empleado WHERE edad 'muy' joven;

