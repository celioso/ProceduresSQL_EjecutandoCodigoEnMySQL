# Procedures SQL: Ejecutando código en MySQL

### Preparando el ambiente

Aquí puedes descargar los archivos que necesitarás para iniciar con tu entrenamiento.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/archive/refs/heads/main.zip "aquí") para descargarlos directamente.

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta clase. Si ya lo has hecho ¡Excelente! Si todavía no lo has hecho, es importante que ejecutes lo que fue visto en los vídeos para que puedas continuar con la próxima aula.

1. Si estás usando un nuevo equipo, debes instalar MySQL. Por ello, te invito a seguir las siguientes instrucciones:

**Instalación en WINDOWS**

- Accede a través de tu navegador y busca: MySQL Downloads. Allí, accederás al link [http://www.mysql.com/downloads](http://www.mysql.com/downloads "http://www.mysql.com/downloads").
- Busca el link que dice:** MySQL Community Edition (GPL) / Community (GPL) downloads**.
- Dirígete hacia: **MySQL on Windows (Installer & Tools) / Downloads**.
- Haz clic en: **MySQL Installer**.
- Haz clic en el botón de download al lado de la opción: **Windows (x86-32 Bits), MSI Installer (mysql-installer-web-community-8.0.15.0.msi)**.
- Haz login en la página de Oracle. Si no tienes login regístrate.
- Luego de hacer Login haz clic en **Download Now**.
- Ejecuta el programa que fue descargado.
- Haz clic en: **I Accept the license terms y luego en Next**.
- Escoge la instalación:** Developer Default**. Haz clic en **Next** dos veces.
- Haz clic sobre **Execute** para hacer el download y la instalación de la base y sus componentes.
- Haz clic en **Next** dos veces.
- Mantén la opción **StandAlone MySQL Server / Classic MySQL Replication**.
- Mantén las propiedades por defecto del servicio y del gateway. Clic en **Next**.
- Mantén la opción **Use Strong Encryption for Authentication...**. Clic en **Next**.
- Incluye la contraseña del usuario root dos veces. Clic en **Next**.
- Mantén las propiedades por defecto. Clic en **Next**.
- Clic en Execute para iniciar la instalación.

Siempre selecciona **Next** y **Finish** a medida que otros cuadros de diálogo sean exhibidos. Si se solicita la contraseña del usuario root, digita la que configuraste anteriormente durante la instalación.

Automáticamente, Workbench se abrirá. Haz clic en la conexión que fue configurada. ¡Felicitaciones, tu ambiente de trabajo está al aire, y listo para comenzar!

**Instalación en UBUNTU**

Comandos para verificar si MySQL está instalado:

```cmd
dpkg -l mysql-server
mysql -V
```

Comandos para desinstalar MySQL:

```cmd
sudo apt-get remove --purge mysql*
sudo apt-get purge mysql*
sudo apt-get autoremove
sudo apt-get autoclean
```

Comandos para instalar MySQL:

```cmd
sudo apt-get install mysql-server
sudo apt-get install mysql-workbench
```

Configurando MySQL:

```cmd
sudo mysql_secure_installation 
```

Se quieres hacer login como root a través de programas externos:

```cmd
sudo mysql -u root ALTER USER 'root'@'localhost' IDENTIFIED WITH
```

2. Si estás usando un nuevo equipo, o no participaste de los cursos anteriores, debes recuperar la base de datos que usaremos en este curso. Para ello, realiza los siguientes pasos:

- Abre MySQL Workbench. Usa la conexión LOCALHOST.
- Botão derecho del mouse sobre la lista de las bases y escoge **Create Schema...**.
- Digita el nombre jugos_ventas. Clic en **Apply** dos veces.
- Descarga y descompacta el archivo RecuperacionAmbiente.rar. (Este archivo está disponible en la sección Preparando el Ambiente de esta Aula).
- Selecciona, en el área Navigator, la pestaña **Administration**.
- Selecciona el link **Data Import/Restore**.
- En la opción **Import From Dump Project Folder **escoge el directorio: `/DumpJugosVentas`.
- Selecciona Start Import.
- Verifica en la base jugos_ventas si las tablas fueron creadas.

### Lo que aprendimos

Lo que aprendimos en esta aula:

- A instalar MySQL;
- A recuperar la base de datos para ser utilizada en este entrenamiento.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/tree/aula-2 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/archive/refs/heads/aula-2.zip "aquí") para descargarlos directamente.

### Estructura de comando para la creación de un Stored Procedure

Crea un SP con las siguientes 4 variables y que al utilizar el comando `CALL`, las mismas puedan ser visualizadas.

```SQL
/*
Nombre: Cliente. 
Tipo: Caracteres con 10 posiciones. 
Valor: Juan.

Nombre: Edad. 
Tipo: Entero. 
Valor: 10.

Nombre: Fecha_Nacimiento. 
Tipo: Fecha. 
Valor: 10/01/2007.

Nombre: Costo. 
Tipo: Número con casillas decimales. 
Valor: 10.23 .
*/
```

```SQL
CREATE PROCEDURE `desafio_1`()
BEGIN
DECLARE Cliente VARCHAR(10);
DECLARE Edad INT;
DECLARE Fecha_Nacimiento DATE;
DECLARE Costo FLOAT;

SET Cliente = 'Juan';
SET Edad = 10;
SET Fecha_Nacimiento = '20170110';
SET Costo = 10.23;

SELECT Cliente;
SELECT Edad;
SELECT Fecha_Nacimiento;
SELECT Costo;

END
```

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta clase. Si ya lo has hecho ¡Excelente! Si todavía no lo has hecho, es importante que ejecutes lo que fue visto en los vídeos para que puedas continuar con la próxima aula.

1. Abre MySQL Workbench y crea un nuevo script de comandos SQL.

2.  Vamos a iniciar creando algunos **Stored Procedures**. Clic con el botón derecho del mouse sobre **Stored Procedure**, en el área correspondiente a la base jugos_ventas.

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/02/12.png)

3. Digita, después del comando CREATE PROCEDURE, dentro de las comillas, el nombre de la Stored Procedure (hola_mundo).

4. Entre BEGIN y END digita:

```SQL
SELECT 'Hola Mundo !!!!';
```

5. Haz clic en Apply. Veremos el siguiente comando:

```SQL
USE `jugos_ventas`;
DROP procedure IF EXISTS `hola_mundo`;
DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `hola_mundo` ()
BEGIN
select 'Hola Mundo !!!!';
END$$
DELIMITER ;
```

6. Los anteriores comandos representan a los comandos MySQL para la creación del **Stored Procedure**. Se ejecutamos estos comandos directamente en el script MySQL el SP (Stored Procedure) será creado.

7. Haz clic en **Apply** y después en **Finish**.

8. En el Script digita y ejecuta:

```SQL
CALL hola_mundo;
```
9. Obtendremos como resultado:

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/02/13.png)

10. Digita, en el script SQL:

```SQL
USE `jugos_ventas`;
DROP procedure IF EXISTS `muestra_numero`;
DELIMITER $$
USE  `jugos_ventas`$$
CREATE PROCEDURE `muestra_numero` ()
BEGIN
SELECT (9 + 5) * 2 AS RESULTADO;
END$$
DELIMITER ;
```

Observación: A diferencia de los videos donde los SPs fueron creados por el asistente, aquí, en el paso a paso, presentaremos el código MySQL para la creación del SP.

11. En el script digita y ejecuta:

```SQL
Call mostra_numero;
```

¿Qué número ves como resultado?

12. Vimos, aquí, un SP que devuelve una expresión numérica.

13. Digita y ejecuta:

```SQL
USE `jugos_ventas`;
DROP procedure IF EXISTS `concatenar`;
DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `concatenar`()
BEGIN
SELECT CONCAT('Hola Mundo', " ", '!!!!') AS RESULTADO;
END$$
DELIMITER ;
```

14. Digita e ejecuta:

```SQL
CALL concatenar;
```

15. Observamos que podemos utilizar funciones de MySQL dentro de los SPs.

16. También podemos realizar comentarios al interior de un SP. Digita y ejecuta:

```SQL
USE `jugos_ventas`;
DROP procedure IF EXISTS `concatenar_con_comentarios`;
DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `concatenar_con_comentarios`()
BEGIN
/*
Este es un ejemplo de comentario
al interior de un procedure
*/
-- Así se comenta un stored procedure.
# Así también.
SELECT CONCAT("Hola a todos!!", ' ', 'Este procedure concatena strings.') AS RESULTADO;
END$$

DELIMITER ;
```

17. También podemos eliminar un **Stored Procedure**, dando clic derecho sobre el mismo, y seleccionando la opción **Drop Stored Procedure**. Para usarlo, basta duplicar el procedimiento anterior y almacenarlo con otro nombre:

```SQL
USE `jugos_ventas`;
DROP procedure IF EXISTS `concatenar_con_comentarios_1`;
DELIMITER $$
USE `jugos_ventas`$$
CREATE PROCEDURE `concatenar_con_comentarios_1`()
BEGIN
/*
Este es un ejemplo de comentario
al interior de un procedure
*/
-- Así se comenta un stored procedure.
# Así también.
SELECT CONCAT("Hola a todos!!", ' ', 'Este procedure concatena strings.') AS RESULTADO;
END$$

DELIMITER ;
```

18. Para eliminarlo, una de las opciones que tenemos es la siguiente:

```SQL
USE `jugos_ventas`;
DROP procedure IF EXISTS `concatenar_con_comentarios_1`;
```

19. también podemos hacer clic derecho sobre el SP y seleccionar la opción** Drop Stored Procedure..**.

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/02/14.png)

20. Podemos utilizar variables para atribuirles valores y emplear las mismas en los comandos del SP. Digita y ejecuta el siguiente comando:

```SQL
DELIMITER $$
CREATE PROCEDURE `exhibir_variable`()
BEGIN
DECLARE texto CHAR(20) DEFAULT 'Hola Mundo!!!!!!!';
SELECT texto;
END$$
DELIMITER ;
```

21. Digita y ejecuta:

```SQL
CALL exhibir_variable;
```

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/02/15.png)

En este SP declaramos una variable llamada **texto**, le atribuimos un valor inicial por defecto y la exhibimos en el *output*.

### Lo que aprendimos

Lo que aprendimos en esta aula:

- A crear un **Stored Procedure** (SP) que devuelve un texto;
- Cómo un SP devuelve un valor en su salida;
- A utilizar funciones de MySQL y realizar comentarios al interior del SP;
- Cómo alterar un SP existente;
- Cómo excluir un SP.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/tree/aula-3 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/archive/refs/heads/aula-3.zip "aquí") para descargarlos directamente.

### Actualizando la edad

Crea un SP que actualice la edad de los clientes. Recuerda que el comando para calcular la edad, en la tabla `tabla_de_clientes` es:

```SQL
TIMESTAMPDIFF(YEAR, FECHA_DE_NACIMIENTO, CURDATE()) as EDAD
```

Puedes nombrar el SP así: `calcula_edad`.

```SQL
DELIMITER $$
CREATE PROCEDURE `calcula_edad`()
BEGIN
UPDATE tabla_de_clientes SET EDAD =  TIMESTAMPDIFF(YEAR, FECHA_DE_NACIMIENTO, CURDATE());
END $$
```

### Actualizando la comisión

Crea un SP para reajustar el % de comisión de los vendedores. Incluye como parámetro del SP el %, expresado en valor (Ex: 0,90).

Nombre del Stored Procedure: `reajuste_comision`.

```SQL
DELIMITER $$
CREATE PROCEDURE `reajuste_comision`(vporcentaje FLOAT)
BEGIN
UPDATE tabla_de_vendedores SET PORCENTAJE_COMISION =  PORCENTAJE_COMISION * (1 + vporcentaje);
END $$
```

### Comando para tratar los errores

¿Cuál es el comando para tratar los errores?

```SQL
DECLARE EXIT HANDLER FOR
```

### Usando SELECT para atribuir valores

Crea una variable llamada N_FACTURAS y atribuye a ella el número de facturas del día 01/01/2017. Muestra en el output del script el valor de la variable. (Nombra este Stored **Procedure** como `cantidad_facturas`).

```SQL
DELIMITER $$
CREATE PROCEDURE `cantidad_facturas`()
BEGIN
DECLARE N_FACTURAS INTEGER;
SELECT COUNT(*) INTO N_FACTURAS FROM facturas WHERE
FECHA_VENTA = '2017-01-01';
SELECT N_FACTURAS;
END $$
```

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta clase. Si ya lo has hecho ¡Excelente! Si todavía no lo has hecho, es importante que ejecutes lo que fue visto en los vídeos para que puedas continuar con la próxima aula.

1. Abre un nuevo script MySQL.

2. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `manipulacion`()
BEGIN
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES ('1001001','Sabor Alpino','Mango','700 ml','Botella',7.50),
         ('1001000','Sabor Alpino','Melón','700 ml','Botella',7.50),
         ('1001002','Sabor Alpino','Guanábana','700 ml','Botella',7.50),
         ('1001003','Sabor Alpino','Mandarina','700 ml','Botella',7.50),
         ('1001004','Sabor Alpino','Banana','700 ml','Botella',7.50),
         ('1001005','Sabor Alpino','Asaí','700 ml','Botella',7.50),
         ('1001006','Sabor Alpino','Mango','1 Litro','Botella',7.50),
         ('1001007','Sabor Alpino','Melón','1 Litro','Botella',7.50),
         ('1001008','Sabor Alpino','Guanábana','1 Litro','Botella',7.50),
         ('1001009','Sabor Alpino','Mandarina','1 Litro','Botella',7.50),
         ('1001010','Sabor Alpino','Banana','1 Litro','Botella',7.50),
         ('1001011','Sabor Alpino','Asaí','1 Litro','Botella',7.50);

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

UPDATE tabla_de_productos SET PRECIO_DE_LISTA= 5 WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

DELETE FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';
END$$
DELIMITER ;
```

3. Ejecuta:

```SQL
CALL manipulacion;
```

4. El SP anterior manipula una serie de comandos en la base de datos de MySQL.

Observación: Si se presenta el error 1175, hay que realizar una pequeña modificación en la configuración de MySQL. Dirígete hacia menu, y en EDIT/PREFERENCES , desmarca al final del formulario la opción** Safe Updates (Reject UPDATEs and DELETEs with no restrictions)**:

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/16.png)

5) Podemos también usar el SP para insertar datos en la tabla usando variables. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `incluir_producto`()
BEGIN
DECLARE vcodigo VARCHAR(20) DEFAULT '3003001';
DECLARE vnombre VARCHAR(20) DEFAULT 'Sabor Intenso';
DECLARE vsabor VARCHAR(20) DEFAULT 'Tutti Frutti';
DECLARE vtamano VARCHAR(20) DEFAULT '700 ml';
DECLARE venvase VARCHAR(20) DEFAULT 'Botella PET';
DECLARE vprecio DECIMAL(4,2) DEFAULT 7.25;
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES (vcodigo, vnombre, vsabor, vtamano, venvase, vprecio);
END$$
DELIMITER ;
```

6. Ejecuta:

```SQL
CALL incluir_producto;
```

7. Se puede observar que el SP hizo referencia directamente a las variables en el comando INSERT, dentro del SP.

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/17.png)

8. Podemos usar parámetros para ingresar al SP los datos que serán usados en el comando de INSERT. Para ello digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `incluir_producto_parametros`(vcodigo VARCHAR(20), vnombre VARCHAR(20),vsabor VARCHAR(20),
vtamano VARCHAR(20), venvase VARCHAR(20), vprecio DECIMAL(4,2))
BEGIN
DECLARE mensaje VARCHAR(40);
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES (vcodigo, vnombre, vsabor, vtamano, venvase, vprecio);
END$$
DELIMITER ;
```

9. Ejecuta el SP:

```SQL
CALL incluir_producto_parametros('1000800','Sabor del Mar',
'Naranja', '700 ml', 'Botella de Vidrio', 2.25);
```

10. El comando anterior ingresa los datos que serán incluidos dentro de la tabla a través de los parámetros.

11. Repite la ejecución del mismo comando:

```SQL
CALL incluir_producto_parametros('1000800','Sabor del Mar',
'Naranja', '700 ml', 'Botella de Vidrio', 2.25);

```

12. Observa que hubo un error de clave primaria porque el producto 1000800 ya existe en la tabla.

13. Podemos tratar este error para que MySQL presente un mensaje amigable cuando ocurra duplicidad en los registros. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `incluir_producto_parametros`(vcodigo VARCHAR(20), vnombre VARCHAR(20),vsabor VARCHAR(20),
vtamano VARCHAR(20), venvase VARCHAR(20), vprecio DECIMAL(4,2))
BEGIN
DECLARE mensaje VARCHAR(40);
DECLARE EXIT HANDLER FOR 1062
BEGIN
  SET mensaje = 'Producto duplicado! ';
  SELECT mensaje;
END;
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES (vcodigo, vnombre, vsabor, vtamano, venvase, vprecio);
SET mensaje = 'Producto incluido con éxito!';
SELECT mensaje;
END$$
DELIMITER ;
```

14. Digita y ejecuta:

```SQL
CALL incluir_producto_parametros('1000801','Sabor del Mar',
'Naranja', '700 ml', 'Botella de Vidrio', 3.25);
```

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/18.png)

15. Si repites el mismo comando, entonces, no aparecerá el error en el *output*, pero si obtendrás el siguiente mensaje:

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/19.png)

16. Vimos que el comando SET es utilizado para atribuir valores a las variables. Pero, podemos atribuir valores a las mismas usando el comando `SELECT` a través de la cláusula `SELECT INTO`. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `mostrar_sabor`(vcodigo VARCHAR(15))
BEGIN
DECLARE vsabor VARCHAR(20);
SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
SELECT vsabor;
END$$
DELIMITER ;
```

17. Ejecuta:

```SQL
CALL mostrar_sabor('1101035');
```

18. Aparecerá como respuesta el sabor del producto ingresado como parámetro.

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/20.png)

### Lo que aprendimos

Lo que aprendimos en esta aula:

- Cómo manipular comandos SQL dentro del SP;
- Cómo ingresar parámetros para un SP;
- Cómo tratar los errores;
- La atribución de variables a través de un comando `SELECT`.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/tree/aula-4 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/archive/refs/heads/aula-4.zip "aquí") para descargarlos directamente.

### Comando para tratar los errores

¿Cuál es el comando para tratar los errores?

```SQL
DECLARE EXIT HANDLER FOR
```

### Usando SELECT para atribuir valores

Crea una variable llamada N_FACTURAS y atribuye a ella el número de facturas del día 01/01/2017. Muestra en el output del script el valor de la variable. (Nombra este Stored **Procedure** como `cantidad_facturas`).

```SQL
DELIMITER $$
CREATE PROCEDURE `cantidad_facturas`()
BEGIN
DECLARE N_FACTURAS INTEGER;
SELECT COUNT(*) INTO N_FACTURAS FROM facturas WHERE
FECHA_VENTA = '2017-01-01';
SELECT N_FACTURAS;
END $$
```

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta clase. Si ya lo has hecho ¡Excelente! Si todavía no lo has hecho, es importante que ejecutes lo que fue visto en los vídeos para que puedas continuar con la próxima aula.

1. Abre un nuevo script MySQL.

2. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `manipulacion`()
BEGIN
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES ('1001001','Sabor Alpino','Mango','700 ml','Botella',7.50),
         ('1001000','Sabor Alpino','Melón','700 ml','Botella',7.50),
         ('1001002','Sabor Alpino','Guanábana','700 ml','Botella',7.50),
         ('1001003','Sabor Alpino','Mandarina','700 ml','Botella',7.50),
         ('1001004','Sabor Alpino','Banana','700 ml','Botella',7.50),
         ('1001005','Sabor Alpino','Asaí','700 ml','Botella',7.50),
         ('1001006','Sabor Alpino','Mango','1 Litro','Botella',7.50),
         ('1001007','Sabor Alpino','Melón','1 Litro','Botella',7.50),
         ('1001008','Sabor Alpino','Guanábana','1 Litro','Botella',7.50),
         ('1001009','Sabor Alpino','Mandarina','1 Litro','Botella',7.50),
         ('1001010','Sabor Alpino','Banana','1 Litro','Botella',7.50),
         ('1001011','Sabor Alpino','Asaí','1 Litro','Botella',7.50);

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

UPDATE tabla_de_productos SET PRECIO_DE_LISTA= 5 WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

DELETE FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';

SELECT * FROM tabla_de_productos WHERE NOMBRE_DEL_PRODUCTO LIKE 'Sabor Alp%';
END$$
DELIMITER ;
```

3. Ejecuta:

```SQL
CALL manipulacion;
```

4. El SP anterior manipula una serie de comandos en la base de datos de MySQL.

Observación: Si se presenta el error 1175, hay que realizar una pequeña modificación en la configuración de MySQL. Dirígete hacia menu, y en EDIT/PREFERENCES , desmarca al final del formulario la opción** Safe Updates (Reject UPDATEs and DELETEs with no restrictions)**:

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/16.png)

5) Podemos también usar el SP para insertar datos en la tabla usando variables. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `incluir_producto`()
BEGIN
DECLARE vcodigo VARCHAR(20) DEFAULT '3003001';
DECLARE vnombre VARCHAR(20) DEFAULT 'Sabor Intenso';
DECLARE vsabor VARCHAR(20) DEFAULT 'Tutti Frutti';
DECLARE vtamano VARCHAR(20) DEFAULT '700 ml';
DECLARE venvase VARCHAR(20) DEFAULT 'Botella PET';
DECLARE vprecio DECIMAL(4,2) DEFAULT 7.25;
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES (vcodigo, vnombre, vsabor, vtamano, venvase, vprecio);
END$$
DELIMITER ;
```

6. Ejecuta:

```SQL
CALL incluir_producto;
```

7. Se puede observar que el SP hizo referencia directamente a las variables en el comando INSERT, dentro del SP.

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/17.png)

8. Podemos usar parámetros para ingresar al SP los datos que serán usados en el comando de INSERT. Para ello digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `incluir_producto_parametros`(vcodigo VARCHAR(20), vnombre VARCHAR(20),vsabor VARCHAR(20),
vtamano VARCHAR(20), venvase VARCHAR(20), vprecio DECIMAL(4,2))
BEGIN
DECLARE mensaje VARCHAR(40);
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES (vcodigo, vnombre, vsabor, vtamano, venvase, vprecio);
END$$
DELIMITER ;
```

9. Ejecuta el SP:

```SQL
CALL incluir_producto_parametros('1000800','Sabor del Mar',
'Naranja', '700 ml', 'Botella de Vidrio', 2.25);
```

10. El comando anterior ingresa los datos que serán incluidos dentro de la tabla a través de los parámetros.

11. Repite la ejecución del mismo comando:

```SQL
CALL incluir_producto_parametros('1000800','Sabor del Mar',
'Naranja', '700 ml', 'Botella de Vidrio', 2.25);

```

12. Observa que hubo un error de clave primaria porque el producto 1000800 ya existe en la tabla.

13. Podemos tratar este error para que MySQL presente un mensaje amigable cuando ocurra duplicidad en los registros. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `incluir_producto_parametros`(vcodigo VARCHAR(20), vnombre VARCHAR(20),vsabor VARCHAR(20),
vtamano VARCHAR(20), venvase VARCHAR(20), vprecio DECIMAL(4,2))
BEGIN
DECLARE mensaje VARCHAR(40);
DECLARE EXIT HANDLER FOR 1062
BEGIN
  SET mensaje = 'Producto duplicado! ';
  SELECT mensaje;
END;
INSERT INTO tabla_de_productos (CODIGO_DEL_PRODUCTO,NOMBRE_DEL_PRODUCTO,SABOR,TAMANO,ENVASE,PRECIO_DE_LISTA)
     VALUES (vcodigo, vnombre, vsabor, vtamano, venvase, vprecio);
SET mensaje = 'Producto incluido con éxito!';
SELECT mensaje;
END$$
DELIMITER ;
```

14. Digita y ejecuta:

```SQL
CALL incluir_producto_parametros('1000801','Sabor del Mar',
'Naranja', '700 ml', 'Botella de Vidrio', 3.25);
```

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/18.png)

15. Si repites el mismo comando, entonces, no aparecerá el error en el *output*, pero si obtendrás el siguiente mensaje:

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/19.png)

16. Vimos que el comando SET es utilizado para atribuir valores a las variables. Pero, podemos atribuir valores a las mismas usando el comando `SELECT` a través de la cláusula `SELECT INTO`. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `mostrar_sabor`(vcodigo VARCHAR(15))
BEGIN
DECLARE vsabor VARCHAR(20);
SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
SELECT vsabor;
END$$
DELIMITER ;
```

17. Ejecuta:

```SQL
CALL mostrar_sabor('1101035');
```

18. Aparecerá como respuesta el sabor del producto ingresado como parámetro.

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/03/20.png)

### Lo que aprendimos

Lo que aprendimos en esta aula:

- Cómo manipular comandos SQL dentro del SP;
- Cómo ingresar parámetros para un SP;
- Cómo tratar los errores;
- La atribución de variables a través de un comando `SELECT`.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/tree/aula-4 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/archive/refs/heads/aula-4.zip "aquí") para descargarlos directamente.

### Evaluando la cantidad de facturas

Crea un **Stored Procedure** que, basado en una fecha, calcule el número de facturas. Si aparecen más de 70 facturas exhibimos el mensaje: ‘Muchas facturas’. En otro caso, exhibimos el mensaje ‘Pocas facturas’. También, debe exhibir el número de facturas. Llamaremos este **Stored Procedure** como: `evaluacion_facturas`.

La fecha empleada para evaluar la cantidad de facturas será un parámetro del **Stored Procedure**.

```SQL
DELIMITER $$
CREATE PROCEDURE `evaluacion_facturas`(vfecha DATE)
BEGIN
DECLARE mensaje VARCHAR(50);
DECLARE N_FACTURAS INTEGER;
SELECT COUNT(*) INTO N_FACTURAS FROM facturas WHERE
FECHA_VENTA = vfecha;
IF N_FACTURAS > 70
THEN SET mensaje = 'Muchas facturas' ;
ELSE SET mensaje = 'Pocas facturas' ;
END IF;
SELECT mensaje;
END $$
```

### Facturación anual

¡Desafío! Observa la siguiente consulta:

```SQL
SELECT SUM(B.CANTIDAD * B.PRECIO) AS TOTAL_VENTA FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = '20170301';
```

Esta consulta devuelve el valor de la facturación en una fecha determinada.

Construye un **Stored Procedure** llamado` comparacion_ventas` que compare las ventas en dos fechas distintas (Estas fechas serán los parámetros de la SP). Si la variación porcentual de estas ventas es mayor al 10% la respuesta debe ser ‘Verde’. Si está entre -10% y 10% debe retornar ‘Amarillo’. Si la variación es menor al -10% debe retornar ‘Rojo’.

```SQL
DELIMITER $$
CREATE PROCEDURE `comparacion_ventas`(vfecha1 DATE, vfecha2 DATE)
BEGIN
DECLARE facturacion_inicial FLOAT;
DECLARE facturacion_final FLOAT;
DECLARE variacion float;
SELECT SUM(B.CANTIDAD * B.PRECIO) INTO facturacion_inicial  FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = vfecha1;
SELECT SUM(B.CANTIDAD * B.PRECIO) INTO facturacion_final  FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = vfecha2;
SET variacion = ((facturacion_final / facturacion_inicial) -1) * 100;
IF variacion > 10 THEN
SELECT 'Verde';
ELSEIF variacion >= -10 AND variacion <= 10 THEN
SELECT 'Amarillo';
ELSE
SELECT 'Rojo';
END IF;
END $$
```

### Facturación anual usando CASE condicional

Realiza el desafío anterior utilizando CASE condicional.

```SQL
DELIMITER $$
CREATE PROCEDURE `comparacion_ventas_case`(vfecha1 DATE, vfecha2 DATE)
BEGIN
DECLARE facturacion_inicial FLOAT;
DECLARE facturacion_final FLOAT;
DECLARE variacion float;
DECLARE mensaje VARCHAR(20);
SELECT SUM(B.CANTIDAD * B.PRECIO) INTO facturacion_inicial  FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = vfecha1;
SELECT SUM(B.CANTIDAD * B.PRECIO) INTO facturacion_final  FROM 
facturas A INNER JOIN items_facturas B
ON A.NUMERO = B.NUMERO
WHERE A.FECHA_VENTA = vfecha2;
SET variacion = ((facturacion_final / facturacion_inicial) -1) * 100;
CASE
WHEN variacion > 10 THEN SET mensaje = 'Verde';
WHEN variacion >= -10 AND variacion <= 10 THEN SET mensaje = 'Amarillo';
WHEN varacion < -10 THEN SET mensaje = 'Rojo';
END CASE;
SELECT mensaje;
END $$
```

### Cantidad de facturas para diversos días

Teniendo en cuenta que la siguiente función añade 1 día a la fecha:

```SQL
SELECT ADDDATE(FECHA_VENTA, INTERVAL 1 DAY);
```

Crea un **Stored Procedure** que, a partir del día 01/01/2017, cuente el número de facturas hasta el día 10/01/2017. Debemos mostrar la fecha y el número de facturas día tras día. Llamaremos este SP como: `suma_dias_facturas`.

Tips:

Declara variables del tipo DATE: Fecha inicial y fecha final; Haz un loop para probar que la fecha inicial < fecha final; muestra en el output de MySQL la fecha y el número de facturas. No olvides convertir las variables en tipo VARCHAR; Suma la fecha en 1 día.

```SQL
DELIMITER $$
CREATE PROCEDURE `suma_dias_facturas`()
BEGIN
DECLARE fecha_inicial DATE;
DECLARE fecha_final DATE;
DECLARE n_facturas INT;
SET fecha_inicial = '20170101';
SET fecha_final = '20170110';
WHILE fecha_inicial <= fecha_final
DO
SELECT COUNT(*) INTO n_facturas  FROM facturas WHERE FECHA_VENTA = fecha_inicial;
SELECT concat(DATE_FORMAT(fecha_inicial, '%d/%m/%Y'), '-' , CAST(n_facturas AS CHAR(50))) AS RESULTADO;
SELECT ADDDATE(fecha_inicial, INTERVAL 1 DAY) INTO fecha_inicial;
END WHILE;
END $$
```

### Haga lo que hicimos en aula

Llegó la hora de que sigas todos los pasos realizados por mí durante esta clase. Si ya lo has hecho ¡Excelente! Si todavía no lo has hecho, es importante que ejecutes lo que fue visto en los vídeos para que puedas continuar con la próxima aula.

1. Abre un nuevo script MySQL.

2.  Digita e ejecuta:

```SQL
DELIMITER $$
CREATE ROCEDURE `edad_clientes`(vdni VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(50);
DECLARE vfecha DATE;
SELECT FECHA_DE_NACIMIENTO INTO vfecha FROM tabla_de_clientes WHERE DNI = vdni;
IF 
vfecha < '19950101'
THEN
SET vresultado = 'Cliente Viejo.';
ELSE
SET vresultado = 'Cliente Joven.';
END IF;
SELECT vresultado;
END$$
DELIMITER ;

CALL edad_clientes('50534475787');
```

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/04/21.png)

3. El SP anterior hace uso de la estructura IF-THEN-ELSE para clasificar a un cliente como joven o viejo, basado en su edad.

4. Vamos a ver otra estructura de control de flujo. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `precio_producto`(vcodigo VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(40);
DECLARE vprecio FLOAT;
SELECT PRECIO_DE_LISTA INTO vprecio FROM tabla_de_productos 
WHERE CODIGO_DEL_PRODUCTO = vcodigo;
IF vprecio >=12 
THEN SET vresultado = 'Producto costoso.';
ELSEIF
vprecio >= 7 AND vprecio < 12
THEN SET vresultado = 'Producto asequible.';
ELSE
SET vresultado = 'Producto barato.';
END IF;
SELECT vresultado;
END$$
DELIMITER ;
```

5. Digita y ejecuta:

```SQL
CALL precio_producto('1000801');
```

¿Cómo fue clasificado este precio?

6. Observa que la estructura IF-THEN-ELSEIF permite encadenar diversas pruebas.

7. El encadenamiento de condiciones puede ser expresado, también, usando el comando CASE-END-CASE. Para ello, digita e ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `define_sabor`(vcodigo VARCHAR(20))
BEGIN
DECLARE vsabor VARCHAR(20);
SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
CASE vsabor
WHEN 'Maracuyá' THEN SELECT 'Muy Rico';
WHEN 'Limón' THEN SELECT 'Muy Rico';
WHEN 'Frutilla' THEN SELECT 'Muy Rico';
WHEN 'Uva' THEN SELECT 'Muy Rico';
WHEN 'Sandía' THEN SELECT 'Normal';
WHEN 'Mango' THEN SELECT 'Normal';
ELSE SELECT 'Jugos comunes';
END CASE;
END$$
DELIMITER ;
```

8. Digita y ejecuta:

```SQL
CALL define_sabor('1096818');
```

¿Estás de acuerdo con el resultado de este sabor?

9. Una estructura derivada de la anterior es el CASE-NOT-FOUND. Para ello, vamos a crear otro SP que llamaremos `define_sabor_con_error`. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `define_sabor_con_error`(vcodigo VARCHAR(20))
BEGIN
DECLARE vsabor VARCHAR(20);
SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
CASE vsabor
WHEN 'Maracuyá' THEN SELECT 'Muy Rico';
WHEN 'Limón' THEN SELECT 'Muy Rico';
WHEN 'Frutilla' THEN SELECT 'Muy Rico';
WHEN 'Uva' THEN SELECT 'Muy Rico';
WHEN 'Sandía' THEN SELECT 'Normal';
WHEN 'Mango' THEN SELECT 'Normal';
END CASE;
END$$
DELIMITER ;
```

10. Este SP difiere del anterior tan solo porque fue retirada la siguiente línea de código:

```SQL
ELSE SELECT 'Jugos comunes';
```

Estamos forzando una situación donde ninguna de las condiciones pueden ser satisfechas.

11. Ejecuta el SP:

```SQL
CALL define_sabor_con_error('1002334');
```

12. Obtendremos el siguiente error:

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/04/24.png)

13. Para evitar que no queden contempladas todas las situaciones al interior del comando CASE, podemos añadir tratamiento de errores. Altera el SP ejecutando:

```SQL
DELIMITER $$
CREATE PROCEDURE `define_sabor_con_error`(vcodigo VARCHAR(20))
BEGIN
DECLARE vsabor VARCHAR(20);
DECLARE mensajeerror VARCHAR(50);
DECLARE CONTINUE HANDLER FOR 1339
SET mensajeerror = 'Sabor no definido en ningún caso.';
SELECT SABOR INTO vsabor FROM tabla_de_productos WHERE CODIGO_DEL_PRODUCTO = vcodigo;
CASE vsabor
WHEN 'Maracuyá' THEN SELECT 'Muy Rico';
WHEN 'Limón' THEN SELECT 'Muy Rico';
WHEN 'Frutilla' THEN SELECT 'Muy Rico';
WHEN 'Uva' THEN SELECT 'Muy Rico';
WHEN 'Sandía' THEN SELECT 'Normal';
WHEN 'Mango' THEN SELECT 'Normal';
END CASE;
SELECT mensajeerror;
END$$
DELIMITER 
```

14. Ejecuta el SP:

```SQL
CALL define_sabor_con_error('1000800');
```

El error ha sido tratado con éxito, y nos muestra un mensaje amigable:

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/04/25.png)

15. El CASE Condicional utiliza una estructura de CASE semejante a la empleada cuando ejecutamos un comando SELECT. Digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `precio_producto_case`(vcodigo VARCHAR(20))
BEGIN
DECLARE vresultado VARCHAR(40);
DECLARE vprecio FLOAT;
SELECT PRECIO_DE_LISTA INTO vprecio FROM tabla_de_productos 
WHERE CODIGO_DEL_PRODUCTO = vcodigo;
CASE 
WHEN vprecio >=12 THEN SET vresultado = 'Producto costoso.';
WHEN vprecio >= 7 AND vprecio < 12 THEN SET vresultado = 'Producto asequible.';
WHEN vprecio < 7 THEN SET vresultado = 'Producto barato.';
END CASE;
SELECT vresultado;
END $$
DELIMITER ;
```

16. Digita y ejecuta:

```SQL
CALL precio_producto_case('1000801');
```

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/04/26.png)

17. La estructura de Loop permite repetir un conjunto de comandos hasta que determinada condición se cumpla. Digita y ejecuta:

```SQL
CREATE TABLE tb_looping (ID INT);
```

18. Luego de crear la anterior tabla auxiliar, digita y ejecuta:

```SQL
DELIMITER $$
CREATE PROCEDURE `looping`(vinicial INT, vfinal INT)
BEGIN
DECLARE vcontador INT;
DELETE FROM tb_looping;
SET vcontador = vinicial;
WHILE vcontador <= vfinal
DO
INSERT INTO tb_looping VALUES(vcontador);
SET vcontador = vcontador+1;
END WHILE;
SELECT * FROM tb_looping;
END$$
DELIMITER ;
```

19. Vamos a ejecutar el SP ingresando como parámetros un número inicial y un número final para la creación de una secuencia numérica en la tabla auxiliar. Digita y ejecuta:

```SQL
CALL looping(1,10);
```

![](https://caelum-online-public.s3.amazonaws.com/1833-esp-procedures-sql/04/27.png)

Obtenemos como resultado una secuencia numérica que va de 1 a 10.

### Lo que aprendimos

Lo que aprendimos en esta aula:

- El control de flujo `IF-THEN-ELSE`;
- Una variante del comando anterior llamada `IF-THEN-ELSEIF`;
- La estructura `CASE`;
- Cómo tratar los errores del comando `CASE` cuando no todas las opciones son contempladas en el mismo;
- A utilizar el `CASE` condicional, semejante al `IF-THEN-ELSEIF`;
- El uso de Loops para repetir un conjunto de comandos hasta que una condición sea satisfecha.

### Proyecto del aula anterior

¿Comenzando en esta etapa? Aquí puedes descargar los archivos del proyecto que hemos avanzado hasta el aula anterior.

[Descargue los archivos en Github](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/tree/aula-5 "Descargue los archivos en Github") o haga clic [aquí](https://github.com/alura-es-cursos/1833-procedures-sql-ejecutando-codigo-en-mysql/archive/refs/heads/aula-5.zip "aquí") para descargarlos directamente.