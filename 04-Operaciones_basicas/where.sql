/*WHERE nos permite seleccionar elementos especificos*/
SELECT nombre, email FROM usuarios WHERE id = 4;

/*Traeme los elementos del usuario con el email = "" */
SELECT * FROM usuarios WHERE email  = "carlos@hotmail.com";

/* OPERADORES DE COMPRARACION


*/
/*Selecciona a los usuairios de ese año*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2020;'

/*Trae a todos los usuarios que se registraron el 2020 y el 2021*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) = '2020' OR YEAR(fecha) = '2021';

/*Traer tods los usuaraio que sean iguales o mayores al 2019*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) > = '2019';

/*Traer los usuarios que NO se hayan registrado en el 2020 o que sea nula la fecha*/
SELECT nombre, apellidos FROM usuarios WHERE YEAR(fecha) != '2020' OR ISNULL(fecha);

/*Seleccionar registros por dos columnas deonde el mail sea y la contra*/
SELECT nombre, apellidos FROM usuarios WHERE email = 'carlos@hotmail.com' AND password = '1234';

/*Elementos  que tengan una o*/
SELECT * FROM usuarios WHERE nombre like '%o';