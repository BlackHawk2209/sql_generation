
CREATE TABLE usuarios(
    id     int AUTO_INCREMENT NOT NULL, 
    nombre VARCHAR(100) NOT NULL UNIQUE,
    apellidos VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL UNIQUE,
    fecha DATE NOT NULL,
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
);

CREATE TABLE categorias(
    id int NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    CONSTRAINT pk_categorias PRIMARY KEY(id)
);

CREATE TABLE entradas(
    id int NOT NULL AUTO_INCREMENT,
    usuario_id int NOT NULL,
    categoria_id int NOT NULL,
    titulo VARCHAR(200) NOT NULL,
    description TEXT,
    fecha DATE NOT NULL,
    CONSTRAINT pk_entradas PRIMARY KEY(id),
    CONSTRAINT fk_entrada_usuario FOREIGN KEY(usuario_id) REFERENCES usuarios(id),
    CONSTRAINT fk_entrada_categoria FOREIGN KEY(categoria_id) REFERENCES categorias(id)
);