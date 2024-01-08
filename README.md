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