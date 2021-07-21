/*Insertar valores en una tabla*/
INSERT INTO usuarios VALUES(NULL, 'Carlos Eduardo', 'Jesus Leon', 'carlos@hotmail.com', '1234', '2021-07-20');
INSERT INTO usuarios VALUES(NULL, 'Braulio Perez', 'Garrido', 'braulio@hotmmail.com', '2312', '2021-07-20');
INSERT INTO usuarios VALUES(NULL, 'Frida', 'Alvarado', 'frida@gamil.com', '7777', '2021-02-10');

/*Insertar datos en ciertas columnas*/
INSERT INTO usuarios(fecha, password, nombre, apellidos, email)VALUES('2021-07-20', '12345', 'Juan', 'Perez', 'juan@gmail.com');
