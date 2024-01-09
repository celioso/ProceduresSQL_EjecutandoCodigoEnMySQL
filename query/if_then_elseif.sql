SELECT * FROM tabla_de_productos;

/*
precio >= 12 producto costoso
precio >= 7 y precio < 12 producto asequible
precio < 7 producto barato;
*/

SELECT PRECIO_DE_LISTA FROM tabla_de_productos 
WHERE CODIGO_DEL_PRODUCTO = "1000800";

CALL precio_producto("1000801");
CALL precio_producto("1013793");
CALL precio_producto("1096818");