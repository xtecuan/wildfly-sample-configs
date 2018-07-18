@echo on

set "JAVA_HOME=C:\Work\Java\jdk-10.0.1"
set "JBOSS_HOME=C:\Work\Java\wildfly-13.0.0.Final"
set "WILDFLY_SCRIPTS=C:\Work\Java\wildfly-scripts"
set "JAVA_OPTS=%JAVA_OPTS% -Djboss.server.default.config=standalone-full.xml"
set "JBOSS_ADMINUSER=xtecuan"
set "JBOSS_ADMINPASS=X4tecuan$"

%JBOSS_HOME%\bin\add-user.bat %JBOSS_ADMINUSER% %JBOSS_ADMINPASS% --silent

%JBOSS_HOME%\bin\jboss-cli.bat --file=%WILDFLY_SCRIPTS%\deployH2Database.cli
%JBOSS_HOME%\bin\jboss-cli.bat --file=%WILDFLY_SCRIPTS%\createDataSourceH2.cli
%JBOSS_HOME%\bin\jboss-cli.bat --file=%WILDFLY_SCRIPTS%\deployDavMail.cli
%JBOSS_HOME%\bin\jboss-cli.bat --file=%WILDFLY_SCRIPTS%\addDavMailSocket.cli
%JBOSS_HOME%\bin\jboss-cli.bat --file=%WILDFLY_SCRIPTS%\mailSessionCreation.cli
%JBOSS_HOME%\bin\jboss-cli.bat --file=%WILDFLY_SCRIPTS%\reload.cli
sleep 10
%JBOSS_HOME%\bin\jboss-cli.bat --file=%WILDFLY_SCRIPTS%\sessionBindToSocket.cli
%JBOSS_HOME%\bin\jboss-cli.bat --file=%WILDFLY_SCRIPTS%\reload.cli
%JBOSS_HOME%\bin\jboss-cli.bat --file=%WILDFLY_SCRIPTS%\deploySuccessFactorsIntegrationSuveryMonkey.cli
