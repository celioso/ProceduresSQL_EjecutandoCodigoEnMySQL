CREATE DEFINER=`root`@`localhost` PROCEDURE `concatenar_con_comentarios`()
BEGIN
/*
ESTE ES UN EJEMPLO DE COMENTARIO
AL INTERIOR DE UN PROCEDURE 
*/

-- Así se comenta un stored procedure.
# Así tambien.
SELECT CONCAT("Hola a todos!!", " ", "Este procedure concatena strings.") AS RESULTADO;
END