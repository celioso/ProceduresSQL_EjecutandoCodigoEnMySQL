CREATE DEFINER=`root`@`localhost` PROCEDURE `problema_select_into`()
BEGIN
DECLARE vnombre VARCHAR(50);
SELECT NOMBRE INTO vnombre FROM tabla_de_clientes;
SELECT vnombre;
END