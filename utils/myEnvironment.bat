@Rem	myEnvironment defines the variables used for Adempiere
@Rem	Do not edit directly - use RUN_setup
@Rem	
@Rem	$Id: myEnvironmentTemplate.bat,v 1.12 2005/01/22 21:59:15 jjanke Exp $

@Echo Setting myEnvironment ....
@Rem	Clients only needs
@Rem		IDEMPIERE_HOME
@Rem		JAVA_HOME 
@Rem	Server install needs to check
@Rem		ADEMPIERE_DB_NAME	(for Oracle)
@Rem		passwords

@Rem 	Homes ...
@SET IDEMPIERE_HOME=N:\idempiere\org.idempiere.p2\target\products\org.adempiere.server.product\win32\win32\x86_64
@SET JAVA_HOME=C:\Program Files\Java\jdk-21


@Rem	Database ...
@SET ADEMPIERE_DB_SERVER=localhost
@SET ADEMPIERE_DB_USER=adempiere
@SET ADEMPIERE_DB_PASSWORD=adempiere
@SET ADEMPIERE_DB_URL=jdbc:postgresql://localhost:5432/idempiere
@SET ADEMPIERE_DB_PORT=5432

@Rem	Oracle specifics
@SET ADEMPIERE_DB_PATH=postgresql
@SET ADEMPIERE_DB_NAME=idempiere
@SET ADEMPIERE_DB_SYSTEM=12345bdd

@Rem	Homes(2)
@SET ADEMPIERE_DB_HOME=N:\idempiere\org.idempiere.p2\target\products\org.adempiere.server.product\win32\win32\x86_64\utils\PostgreSQL
@SET JBOSS_HOME=N:\idempiere\org.idempiere.p2\target\products\org.adempiere.server.product\win32\win32\x86_64\jboss

@Rem	Apps Server
@SET ADEMPIERE_APPS_TYPE=@ADEMPIERE_APPS_TYPE@
@SET ADEMPIERE_APPS_SERVER=0.0.0.0
@SET ADEMPIERE_JNP_PORT=@ADEMPIERE_JNP_PORT@
@SET ADEMPIERE_WEB_PORT=8084
@SET ADEMPIERE_APPS_DEPLOY=@ADEMPIERE_APPS_TYPE@
@Rem	SSL Settings
@SET ADEMPIERE_SSL_PORT=8443
@SET ADEMPIERE_KEYSTORE=N:\idempiere\org.idempiere.p2\target\products\org.adempiere.server.product\win32\win32\x86_64\jettyhome/etc\keystore
@SET ADEMPIERE_KEYSTOREWEBALIAS=idempiere
@SET ADEMPIERE_KEYSTOREPASS=OBF:1uh41zly1qw01vu11ym71ym71vv91qxq1zlk1ugm

@Rem	Java
@SET ADEMPIERE_JAVA=C:\Program Files\Java\jdk-21\bin\java
@SET IDEMPIERE_JAVA_OPTIONS= -DIDEMPIERE_HOME=N:\idempiere\org.idempiere.p2\target\products\org.adempiere.server.product\win32\win32\x86_64
@SET CLASSPATH="N:\idempiere\org.idempiere.p2\target\products\org.adempiere.server.product\win32\win32\x86_64\lib\Adempiere.jar;N:\idempiere\org.idempiere.p2\target\products\org.adempiere.server.product\win32\win32\x86_64\lib\AdempiereCLib.jar;"

@Rem Save Environment file
@if (%1) == () copy utils\myEnvironment.bat utils\myEnvironment_%RANDOM%.bat /Y 

