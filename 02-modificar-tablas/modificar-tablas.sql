/*Renombrar tabla*/
ALTER TABLE usuarios RENAME TO usuarios_renom;

/*Renombrar una columna*/
ALTER TABLE usuarios_renom CHANGE apellidos apellido VARCHAR(100) NULL;

/*Modificacir la columna sin cambiar el nombre*/
ALTER TABLE usuarios_renom MODIFY apellido VARCHAR(50) NOT NULL;

/*Añadir columna*/
ALTER TABLE usuarios_renom ADD website VARCHAR(50);

/* Añadir una restriccion a una columna*/ 
ALTER TABLE usuarios_renom ADD CONSTRAINT uq_email UNIQUE(email);

/*Borrar una columna*/
ALTER TABLE usuarios_renom DROP website;

/*Algo de llaves foraneas*/
CONSTRAINT fk_entrada_usuario FOREING KEY(usuario_id) REFERENCES usuarios(id)