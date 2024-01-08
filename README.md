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