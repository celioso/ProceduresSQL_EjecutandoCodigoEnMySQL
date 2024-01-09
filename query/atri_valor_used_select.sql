SELECT * FROM tabla_de_productos;
SELECT CODIGO_DEL_PRODUCTO, SABOR FROM tabla_de_productos;

SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO="1078680";

CALL mostrar_sabor("1101035");