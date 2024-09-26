CREATE TABLE IF NOT EXISTS usuario (
	id_usuario SERIAL PRIMARY KEY, 
	username VARCHAR(30) NOT NULL,
	password VARCHAR(150) NOT NULL,
	fecha_creacion DATE NOT NULL
);

CREATE TABLE IF NOT EXISTS post (
	id_post SERIAL PRIMARY KEY,
	titulo VARCHAR(100) NOT NULL,
	contenido TEXT NOT NULL,
	fecha_publicacion DATE NOT NULL,
	id_usuario_fk INTEGER REFERENCES usuario(id_usuario)
);

CREATE TABLE IF NOT EXISTS comentario (
	id_comentario SERIAL PRIMARY KEY,
	contenido VARCHAR(255) NOT NULL,
	fecha_publicacion DATE NOT NULL,
	id_usuario_fk INTEGER REFERENCES usuario(id_usuario), 
	id_post_fk INTEGER REFERENCES post(id_post)
);

CREATE TABLE IF NOT EXISTS categoria (
    id_categoria SERIAL PRIMARY KEY,
    nombre VARCHAR(50) NOT NULL, -- no puede ser nulo
    descripcion VARCHAR(255)
);

CREATE TABLE IF NOT EXISTS post_categoria (
    id_post_fk INTEGER REFERENCES post(id_post),
    id_categoria_fk INTEGER REFERENCES categoria(id_categoria)
);
-- cambiando el nombre de la columan id_categoria a categoria_id
-- ALTER TABLE categoria RENAME COLUMN id_categoria TO categoria_id;
-- cambiando el nombre de la columna categoria_id a id_categoria
-- ALTER TABLE categoria RENAME COLUMN categoria_id TO id_categoria;

-- insertando datos

INSERT INTO usuario (username, password, fecha_creacion) VALUES ('george_213', 'password123', '2023-09-12')
INSERT INTO usuario (username, password, fecha_creacion) VALUES ('george_12', 'password123', '2023-03-11')

-- seleccionando los campos username y password de la tabla usuario
SELECT username, password FROM usuario;

-- seleccionando todos los campos de la tabla usuario

SELECT * FROM usuario WHERE id_usuario > 0;

-- insertando dentro de la tabla categorias
INSERT INTO categoria (nombre, descripcion) VALUES ('programacion', 'articulos relacionados a la programacion');
INSERT INTO categoria (nombre) VALUES ('matematicas');

-- error debido a la restriccion not null
INSERT INTO categoria (descripcion) VALUES ('articulos relacionados a la ciencia')

SELECT * FROM categoria;

-- insertando post

INSERT INTO post(titulo, contenido, fecha_publicacion, id_usuario_fk)
				VALUES('programacion en java',  'la programacion ...', '2023-12-12', 1);

-- error al insertar ya que el id no existe
-- INSERT INTO post(titulo, contenido, fecha_publicacion, id_usuario_fk)
--				VALUES('programacion en python',  'la programacion ...', '2023-10-12', 4);

SELECT * FROM post;

-- eliminar todos los registros de la tabla post

DELETE FROM post WHERE id_post > 50 AND fecha = '2023-12-12';

-- crendo la relacion de post con categoria

INSERT INTO post_categoria (id_post_fk, id_categoria_fk) VALUES (3, 1);

SELECT * from post_categoria;

-- agregando un comentario

INSERT INTO comentario(contenido, fecha_publicacion, id_usuario_fk, id_post_fk)
					   VALUES ('muy buen post, me sirvio mucho', '2023-12-12', 2, 3);

SELECT * FROM comentario;

DELETE FROM usuario WHERE id_usuario = 1;

CREATE DATABASE onDelete;