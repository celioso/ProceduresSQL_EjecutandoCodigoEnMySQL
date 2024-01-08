-- Crear un procedimiento
USE `jugos_ventas`;
DROP procedure IF EXISTS `exhibir_variables`;

DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `exhibir_variables` ()
BEGIN
DECLARE texto CHAR(12) DEFAULT "Hola Mundo !!!!";
SELECT texto;
END$$

DELIMITER ;


-- Segundo procedimiento corregir error

USE `jugos_ventas`;
DROP procedure IF EXISTS `jugos_ventas`.`exhibir_variables`;
;

DELIMITER $$
USE `jugos_ventas`$$
CREATE DEFINER=`root`@`localhost` PROCEDURE `exhibir_variables`()
BEGIN
DECLARE texto CHAR(20) DEFAULT "Hola Mundo !!!!";
SELECT texto;
END$$

DELIMITER ;
;
-- Fin del procedimiento

CALL exhibir_variables;

CALL declaracion;

CALL sin_declaracion;

CALL atribuir_valores;