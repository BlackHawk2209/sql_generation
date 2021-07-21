
/*crear una tabla*/
CREATE TABLE usuarios(
    id              int AUTO_INCREMENT NOT NULL,
    nombre          VARCHAR(50) NOT NULL,
    apellidos       VARCHAR(50) NOT NULL,
    email           VARCHAR(50) NOT NULL,       
    password        VARCHAR(50) NOT NULL,
    CONSTRAINT pk_usuarios PRIMARY KEY(id)
);

CREATE TABLE usuarios(
    id     int AUTO_INCREMET NOT NULL, 
    nombre VARCHAR(100) NOT NULL UNIQUE
    apellidos VARCHAR(100) NOT NULL UNIQUE,
    email VARCHAR(100) NOT NULL UNIQUE,
    password VARCHAR(100) NOT NULL UNIQUE,
    fecha DATE NOT NULL
);
