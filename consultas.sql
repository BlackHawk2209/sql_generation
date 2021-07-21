/* JOINS nos permiten fusionar informacion de multiples tablas*/
/* Mostrasr las entradas con el nombre del autor y de la categoria*/

SELECT entradas.id, entradas.titulo, usuarios.nombre, categorias.nombre,
FROM entradas 
INNER JOIN usuarios ON entradas.usuario_id = usuarios.id
INNER JOIN categorias ON entradas.categoria_id = categorias.id;

/*Hace lo mismp que la de arriba solo que se define e, u y c para que sea mas facil su manejo*/
SELECT e.id, e.titulo, u.nombre, c.nombre
FROM entradas e
INNER JOIN usuarios u ON e.usuario_id = u.id
INNER JOIN categorias c ON e.categorias_id= c.id;

/*Obtener el numero de entradas de categorias*/
SELECT c.nombre COUNT(e.id) FROM categorias c 
INNER JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;

/*Aqui es lo mismo que arriba pero me traera todas las categorias 
aunque no esten relacionadas con la otra tabla 
en el ejemplo de arriba me trae todas menos terror porque la otra tabla no tiene nada de terror y aqui
abajo si la traera*/
SELECT c.nombre COUNT(e.id) FROM categorias c 
INNER JOIN entradas e ON e.categoria_id = c.id GROUP BY e.categoria_id;
