CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar`()
BEGIN
SELECT CONCAT("Hola Mundo", " ", "!!!!" ) AS RESULTADO;
END