SELECT  DISTINCT SABOR FROM tabla_de_productos;

/*
Maracuyá Rico
Limón Rico
Frutilla Rico
Uva Rico
Sandía Normal
Mango Normal
los demás Comunes
*/
SELECT * FROM tabla_de_productos;

SELECT SABOR FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = "1002767";

CALL define_sabor("1002767");

CALL define_sabor("544931");

CALL define_sabor("243083");

CALL define_sabor("1096818");