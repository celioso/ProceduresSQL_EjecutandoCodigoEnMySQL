CREATE DEFINER=`root`@`localhost` PROCEDURE `atribuir_valores`()
BEGIN
DECLARE numero INTEGER DEFAULT 987;
SELECT numero;
SET numero = 324;
SELECT numero;
END