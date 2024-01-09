SET GLOBAL log_bin_trust_function_creators = 1;

SELECT f_define_sabor("Maracuyá");

SELECT NOMBRE_DEL_PRODUCTO, SABOR, f_define_sabor(SABOR) AS TIPO
FROM tabla_de_productos;

SELECT NOMBRE_DEL_PRODUCTO, SABOR FROM tabla_de_productos
WHERE f_define_sabor(SABOR) = "Muy Rico";