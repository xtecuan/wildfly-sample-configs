@echo on

set "JAVA_HOME=C:\Work\Java\jdk-10.0.1"
set "JBOSS_HOME=C:\Work\Java\wildfly-13.0.0.Final"
set "WILDFLY_SCRIPTS=C:\Work\Java\wildfly-scripts"
set "JAVA_OPTS=%JAVA_OPTS% -Djboss.server.default.config=standalone-full.xml"

%JBOSS_HOME%\bin\standalone.bat -b 0.0.0.0 -bmanagement 0.0.0.0




