@echo on

set "JAVA_HOME=C:\Work\Java\jdk-10.0.1"
set "JBOSS_HOME=C:\Work\Java\wildfly-13.0.0.Final"
set "WILDFLY_SCRIPTS=C:\Work\Java\wildfly-scripts"
set "JAVA_OPTS=%JAVA_OPTS% -Djboss.server.default.config=standalone-full.xml"
set "JBOSS_ADMINUSER=xtecuan"
set "JBOSS_ADMINPASS=xxxxxxx"
set "JBOSS_REMOTECONTROLLERHOST=192.168.37.128:9990"


jboss-cli.bat --connect --controller=%JBOSS_REMOTECONTROLLERHOST% --user=%JBOSS_ADMINUSER% --password=%JBOSS_ADMINPASS%