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