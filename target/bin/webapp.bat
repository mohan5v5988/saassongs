@REM ----------------------------------------------------------------------------
@REM  Copyright 2001-2006 The Apache Software Foundation.
@REM
@REM  Licensed under the Apache License, Version 2.0 (the "License");
@REM  you may not use this file except in compliance with the License.
@REM  You may obtain a copy of the License at
@REM
@REM       http://www.apache.org/licenses/LICENSE-2.0
@REM
@REM  Unless required by applicable law or agreed to in writing, software
@REM  distributed under the License is distributed on an "AS IS" BASIS,
@REM  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
@REM  See the License for the specific language governing permissions and
@REM  limitations under the License.
@REM ----------------------------------------------------------------------------
@REM
@REM   Copyright (c) 2001-2006 The Apache Software Foundation.  All rights
@REM   reserved.

@echo off

set ERROR_CODE=0

:init
@REM Decide how to startup depending on the version of windows

@REM -- Win98ME
if NOT "%OS%"=="Windows_NT" goto Win9xArg

@REM set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" @setlocal

@REM -- 4NT shell
if "%eval[2+2]" == "4" goto 4NTArgs

@REM -- Regular WinNT shell
set CMD_LINE_ARGS=%*
goto WinNTGetScriptDir

@REM The 4NT Shell from jp software
:4NTArgs
set CMD_LINE_ARGS=%$
goto WinNTGetScriptDir

:Win9xArg
@REM Slurp the command line arguments.  This loop allows for an unlimited number
@REM of arguments (up to the command line limit, anyway).
set CMD_LINE_ARGS=
:Win9xApp
if %1a==a goto Win9xGetScriptDir
set CMD_LINE_ARGS=%CMD_LINE_ARGS% %1
shift
goto Win9xApp

:Win9xGetScriptDir
set SAVEDIR=%CD%
%0\
cd %0\..\.. 
set BASEDIR=%CD%
cd %SAVEDIR%
set SAVE_DIR=
goto repoSetup

:WinNTGetScriptDir
set BASEDIR=%~dp0\..

:repoSetup
set REPO=


if "%JAVACMD%"=="" set JAVACMD=java

if "%REPO%"=="" set REPO=%BASEDIR%\repo

<<<<<<< HEAD
set CLASSPATH="%BASEDIR%"\etc;"%REPO%"\org\twitter4j\twitter4j-httpclient-support\2.2.6\twitter4j-httpclient-support-2.2.6.jar;"%REPO%"\org\twitter4j\twitter4j-core\4.0.2\twitter4j-core-4.0.2.jar;"%REPO%"\org\glassfish\jersey\containers\jersey-container-servlet\2.14\jersey-container-servlet-2.14.jar;"%REPO%"\org\glassfish\jersey\containers\jersey-container-servlet-core\2.14\jersey-container-servlet-core-2.14.jar;"%REPO%"\org\glassfish\jersey\core\jersey-common\2.14\jersey-common-2.14.jar;"%REPO%"\javax\annotation\javax.annotation-api\1.2\javax.annotation-api-1.2.jar;"%REPO%"\org\glassfish\jersey\bundles\repackaged\jersey-guava\2.14\jersey-guava-2.14.jar;"%REPO%"\org\glassfish\hk2\osgi-resource-locator\1.0.1\osgi-resource-locator-1.0.1.jar;"%REPO%"\org\glassfish\jersey\core\jersey-server\2.14\jersey-server-2.14.jar;"%REPO%"\javax\validation\validation-api\1.1.0.Final\validation-api-1.1.0.Final.jar;"%REPO%"\javax\ws\rs\javax.ws.rs-api\2.0.1\javax.ws.rs-api-2.0.1.jar;"%REPO%"\org\glassfish\jersey\core\jersey-client\2.14\jersey-client-2.14.jar;"%REPO%"\org\glassfish\hk2\hk2-api\2.4.0-b06\hk2-api-2.4.0-b06.jar;"%REPO%"\org\glassfish\hk2\hk2-utils\2.4.0-b06\hk2-utils-2.4.0-b06.jar;"%REPO%"\org\glassfish\hk2\external\aopalliance-repackaged\2.4.0-b06\aopalliance-repackaged-2.4.0-b06.jar;"%REPO%"\org\glassfish\hk2\external\javax.inject\2.4.0-b06\javax.inject-2.4.0-b06.jar;"%REPO%"\org\glassfish\hk2\hk2-locator\2.4.0-b06\hk2-locator-2.4.0-b06.jar;"%REPO%"\org\javassist\javassist\3.18.1-GA\javassist-3.18.1-GA.jar;"%REPO%"\org\glassfish\jersey\connectors\jersey-apache-connector\2.14\jersey-apache-connector-2.14.jar;"%REPO%"\org\apache\httpcomponents\httpclient\4.3.1\httpclient-4.3.1.jar;"%REPO%"\org\apache\httpcomponents\httpcore\4.3\httpcore-4.3.jar;"%REPO%"\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar;"%REPO%"\commons-codec\commons-codec\1.6\commons-codec-1.6.jar;"%REPO%"\org\glassfish\jersey\media\jersey-media-multipart\2.14\jersey-media-multipart-2.14.jar;"%REPO%"\org\jvnet\mimepull\mimepull\1.9.3\mimepull-1.9.3.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-core\7.0.34\tomcat-embed-core-7.0.34.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-logging-juli\7.0.34\tomcat-embed-logging-juli-7.0.34.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-jasper\7.0.34\tomcat-embed-jasper-7.0.34.jar;"%REPO%"\org\eclipse\jdt\core\compiler\ecj\3.7.2\ecj-3.7.2.jar;"%REPO%"\org\apache\tomcat\tomcat-jasper\7.0.34\tomcat-jasper-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-servlet-api\7.0.34\tomcat-servlet-api-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-juli\7.0.34\tomcat-juli-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-el-api\7.0.34\tomcat-el-api-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-api\7.0.34\tomcat-api-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-util\7.0.34\tomcat-util-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-jasper-el\7.0.34\tomcat-jasper-el-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-jsp-api\7.0.34\tomcat-jsp-api-7.0.34.jar;"%REPO%"\com\fasterxml\jackson\core\jackson-core\2.5.0\jackson-core-2.5.0.jar;"%REPO%"\com\fasterxml\jackson\core\jackson-databind\2.5.0\jackson-databind-2.5.0.jar;"%REPO%"\com\fasterxml\jackson\core\jackson-annotations\2.5.0\jackson-annotations-2.5.0.jar;"%REPO%"\org\mongodb\mongo-java-driver\2.12.5\mongo-java-driver-2.12.5.jar;"%REPO%"\org\postgresql\postgresql\9.3-1100-jdbc41\postgresql-9.3-1100-jdbc41.jar;"%REPO%"\com\luckypants\LuckyPants\1.0-SNAPSHOT\LuckyPants-1.0-SNAPSHOT.jar
=======
set CLASSPATH="%BASEDIR%"\etc;"%REPO%"\org\glassfish\jersey\containers\jersey-container-servlet\2.14\jersey-container-servlet-2.14.jar;"%REPO%"\org\glassfish\jersey\containers\jersey-container-servlet-core\2.14\jersey-container-servlet-core-2.14.jar;"%REPO%"\org\glassfish\jersey\core\jersey-common\2.14\jersey-common-2.14.jar;"%REPO%"\javax\annotation\javax.annotation-api\1.2\javax.annotation-api-1.2.jar;"%REPO%"\org\glassfish\jersey\bundles\repackaged\jersey-guava\2.14\jersey-guava-2.14.jar;"%REPO%"\org\glassfish\hk2\osgi-resource-locator\1.0.1\osgi-resource-locator-1.0.1.jar;"%REPO%"\org\glassfish\jersey\core\jersey-server\2.14\jersey-server-2.14.jar;"%REPO%"\javax\validation\validation-api\1.1.0.Final\validation-api-1.1.0.Final.jar;"%REPO%"\javax\ws\rs\javax.ws.rs-api\2.0.1\javax.ws.rs-api-2.0.1.jar;"%REPO%"\org\glassfish\jersey\core\jersey-client\2.14\jersey-client-2.14.jar;"%REPO%"\org\glassfish\hk2\hk2-api\2.4.0-b06\hk2-api-2.4.0-b06.jar;"%REPO%"\org\glassfish\hk2\hk2-utils\2.4.0-b06\hk2-utils-2.4.0-b06.jar;"%REPO%"\org\glassfish\hk2\external\aopalliance-repackaged\2.4.0-b06\aopalliance-repackaged-2.4.0-b06.jar;"%REPO%"\org\glassfish\hk2\external\javax.inject\2.4.0-b06\javax.inject-2.4.0-b06.jar;"%REPO%"\org\glassfish\hk2\hk2-locator\2.4.0-b06\hk2-locator-2.4.0-b06.jar;"%REPO%"\org\javassist\javassist\3.18.1-GA\javassist-3.18.1-GA.jar;"%REPO%"\org\glassfish\jersey\connectors\jersey-apache-connector\2.14\jersey-apache-connector-2.14.jar;"%REPO%"\org\apache\httpcomponents\httpclient\4.3.1\httpclient-4.3.1.jar;"%REPO%"\org\apache\httpcomponents\httpcore\4.3\httpcore-4.3.jar;"%REPO%"\commons-logging\commons-logging\1.1.3\commons-logging-1.1.3.jar;"%REPO%"\commons-codec\commons-codec\1.6\commons-codec-1.6.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-core\7.0.34\tomcat-embed-core-7.0.34.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-logging-juli\7.0.34\tomcat-embed-logging-juli-7.0.34.jar;"%REPO%"\org\apache\tomcat\embed\tomcat-embed-jasper\7.0.34\tomcat-embed-jasper-7.0.34.jar;"%REPO%"\org\eclipse\jdt\core\compiler\ecj\3.7.2\ecj-3.7.2.jar;"%REPO%"\org\apache\tomcat\tomcat-jasper\7.0.34\tomcat-jasper-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-servlet-api\7.0.34\tomcat-servlet-api-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-juli\7.0.34\tomcat-juli-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-el-api\7.0.34\tomcat-el-api-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-api\7.0.34\tomcat-api-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-util\7.0.34\tomcat-util-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-jasper-el\7.0.34\tomcat-jasper-el-7.0.34.jar;"%REPO%"\org\apache\tomcat\tomcat-jsp-api\7.0.34\tomcat-jsp-api-7.0.34.jar;"%REPO%"\com\fasterxml\jackson\core\jackson-core\2.5.0\jackson-core-2.5.0.jar;"%REPO%"\com\fasterxml\jackson\core\jackson-databind\2.5.0\jackson-databind-2.5.0.jar;"%REPO%"\com\fasterxml\jackson\core\jackson-annotations\2.5.0\jackson-annotations-2.5.0.jar;"%REPO%"\org\mongodb\mongo-java-driver\2.12.5\mongo-java-driver-2.12.5.jar;"%REPO%"\postgresql\postgresql\9.1-901-1.jdbc4\postgresql-9.1-901-1.jdbc4.jar;"%REPO%"\com\luckypants\LuckyPants\1.0-SNAPSHOT\LuckyPants-1.0-SNAPSHOT.jar
>>>>>>> a1f65466b1651dc1ea400c84f9ceb5a7cf30f7b3

set ENDORSED_DIR=
if NOT "%ENDORSED_DIR%" == "" set CLASSPATH="%BASEDIR%"\%ENDORSED_DIR%\*;%CLASSPATH%

if NOT "%CLASSPATH_PREFIX%" == "" set CLASSPATH=%CLASSPATH_PREFIX%;%CLASSPATH%

@REM Reaching here means variables are defined and arguments have been captured
:endInit

%JAVACMD% %JAVA_OPTS%  -classpath %CLASSPATH% -Dapp.name="webapp" -Dapp.repo="%REPO%" -Dapp.home="%BASEDIR%" -Dbasedir="%BASEDIR%" launch.Main %CMD_LINE_ARGS%
if %ERRORLEVEL% NEQ 0 goto error
goto end

:error
if "%OS%"=="Windows_NT" @endlocal
set ERROR_CODE=%ERRORLEVEL%

:end
@REM set local scope for the variables with windows NT shell
if "%OS%"=="Windows_NT" goto endNT

@REM For old DOS remove the set variables from ENV - we assume they were not set
@REM before we started - at least we don't leave any baggage around
set CMD_LINE_ARGS=
goto postExec

:endNT
@REM If error code is set to 1 then the endlocal was done already in :error.
if %ERROR_CODE% EQU 0 @endlocal


:postExec

if "%FORCE_EXIT_ON_ERROR%" == "on" (
  if %ERROR_CODE% NEQ 0 exit %ERROR_CODE%
)

exit /B %ERROR_CODE%
