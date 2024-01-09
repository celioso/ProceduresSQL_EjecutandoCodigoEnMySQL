CREATE DEFINER=`root`@`localhost` PROCEDURE `cursor_looping_varios_campos`()
BEGIN
DECLARE fin_c INT DEFAULT 0;
DECLARE vbarrio, vciudad, vestado, vcp VARCHAR(50);
DECLARE vnombre, vdireccion VARCHAR(50);
DECLARE c CURSOR FOR SELECT NOMBRE, DIRECCION_1, BARRIO, CIUDAD, ESTADO, CP FROM tabla_de_clientes;
DECLARE CONTINUE HANDLER FOR NOT FOUND
SET fin_c = 1;
OPEN c;
WHILE fin_c = 0
DO 
FETCH c INTO vnombre, vdireccion, vbarrio, vciudad, vestado, vcp;
IF fin_c = 0
THEN SELECT CONCAT(vnombre, " Dirección: ", vdireccion," - ", vbarrio, " - ", vciudad, " - ", vestado, " - ", vcp ) AS RESULTADO;
END IF;
END WHILE;
CLOSE c;
END