CREATE DEFINER=`root`@`localhost` PROCEDURE `declaracion`()
BEGIN
DECLARE v VARCHAR(30) DEFAULT "Caracteres Variables";
DECLARE i INTEGER DEFAULT 564;
DECLARE d DECIMAL(5,3) DEFAULT 89.765;
DECLARE f DATE DEFAULT "2024-01-07";
DECLARE ts TIMESTAMP DEFAULT CURRENT_TIMESTAMP();
SELECT v;
SELECT i;
SELECT d;
SELECT f;
SELECT ts;
END