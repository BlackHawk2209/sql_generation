/*Consulta para obtener el numero de entradas por categorias*/
/*Con el count contamos todas las entradas por categaorias*/
SELECT COUNT(titulo), categoria_id FROM entradas GROUP BY categoria_id;

/*Consultas por condiciones*/
/* Trae todos los titulos y cuentalos y las categoairas id de la tabla entradas agrupadas por categoria id*/ 
/*HAVING sustituye al WHERE*/
SELECT COUNT(titulo) AS 'Numero de entradas', categoria_id FROM entradas GROUP BY categoria_id HAVING COUNT(titulo) >=4;

/*
AVG nos permite sacar el promedio de los elementos numericos
MAX nos permite obtener el numero mayor
SUM nos permite sumer elementos numericos
MIN nos da el numero menor*/
SELECT AVG(id) AS 'Promedio id' FROM entradas;
SELECT MAX(id) AS 'Maximo id' FROM entradas;
SELECT SUM(id) AS 'Suma de ids' FROM entradas;
SELECT MIN(id) AS 'Minimo id' FROM entradas;
