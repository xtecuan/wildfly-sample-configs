@echo off
set "JBOSS_HOME=C:\Work\Java\wildfly-10.1.0.Final"
set "JAVA_HOME=C:\Work\Java\jdk1.8.0_131"
set "PATH=%JAVA_HOME%\bin;%PATH%"

%JBOSS_HOME%\bin\standalone.bat
