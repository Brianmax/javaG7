CREATE TABLE IF NOT EXISTS profesores (
    id_profesor SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    apellido VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS cursos(
    id_curso SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    descripcion VARCHAR(100),
    
    -- llave foranea
    id_profesor INTEGER REFERENCES profesores(id_profesor) ON DELETE SET NULL
);

INSERT INTO profesores(nombre, apellido) VALUES('Jorge', 'Martinez');
INSERT INTO profesores(nombre, apellido) VALUES('Ana', 'Garcia');

SELECT * FROM profesores;

INSERT INTO cursos(nombre, descripcion, id_profesor) VALUES('programacion', 'curso basico', 1); 
INSERT INTO cursos(nombre, descripcion, id_profesor) VALUES('matematicas', 'curso basico', 2);

SELECT * FROM cursos;

DELETE FROM profesores WHERE id_profesor = 1;

CREATE TABLE departamentos(
    id_departamento SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    ubicacion VARCHAR(50)
)

CREATE TABLE empleados (
    id_empleado SERIAL PRIMARY KEY,
    nombre VARCHAR(50),
    puesto VARCHAR(50)

    id_departamento INTEGER REFERENCES departamentos(id_departamento)
                                ON DELETE NO ACTION;
);

CREATE TABLE IF NOT EXISTS clientes (
    id_cliente SERIAL PRIMARY KEY,
    nombre VARCHAR(50)
);

CREATE TABLE IF NOT EXISTS pedidos (
    id_pedido SERIAL PRIMARY KEY,
    cantidad INTEGER,
    fecha_entrega DATE,

    id_cliente INTEGER REFERENCES clientes(id_cliente) 
                ON DELETE CASCADE
);


INSERT INTO clientes (nombre) VALUES ('JOSE');
INSERT INTO clientes (nombre) VALUES ('ANDRES');

SELECT * FROM clientes;


INSERT INTO pedidos (cantidad, fecha_entrega, id_cliente) VALUES (4, '2020-12-12', 1);
INSERT INTO pedidos (cantidad, fecha_entrega, id_cliente) VALUES (5, '2020-12-12', 1);
INSERT INTO pedidos (cantidad, fecha_entrega, id_cliente) VALUES (10, '2020-11-11', 2);

SELECT * FROM pedidos;

DELETE FROM clientes WHERE id_cliente = 1;


create DATABASE aerolinea_db;
