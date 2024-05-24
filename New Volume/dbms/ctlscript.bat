@echo off
rem START or STOP Services
rem ----------------------------------
rem Check if argument is STOP or START

if not ""%1"" == ""START"" goto stop

if exist E:\dbms\hypersonic\scripts\ctl.bat (start /MIN /B E:\dbms\server\hsql-sample-database\scripts\ctl.bat START)
if exist E:\dbms\ingres\scripts\ctl.bat (start /MIN /B E:\dbms\ingres\scripts\ctl.bat START)
if exist E:\dbms\mysql\scripts\ctl.bat (start /MIN /B E:\dbms\mysql\scripts\ctl.bat START)
if exist E:\dbms\postgresql\scripts\ctl.bat (start /MIN /B E:\dbms\postgresql\scripts\ctl.bat START)
if exist E:\dbms\apache\scripts\ctl.bat (start /MIN /B E:\dbms\apache\scripts\ctl.bat START)
if exist E:\dbms\openoffice\scripts\ctl.bat (start /MIN /B E:\dbms\openoffice\scripts\ctl.bat START)
if exist E:\dbms\apache-tomcat\scripts\ctl.bat (start /MIN /B E:\dbms\apache-tomcat\scripts\ctl.bat START)
if exist E:\dbms\resin\scripts\ctl.bat (start /MIN /B E:\dbms\resin\scripts\ctl.bat START)
if exist E:\dbms\jetty\scripts\ctl.bat (start /MIN /B E:\dbms\jetty\scripts\ctl.bat START)
if exist E:\dbms\subversion\scripts\ctl.bat (start /MIN /B E:\dbms\subversion\scripts\ctl.bat START)
rem RUBY_APPLICATION_START
if exist E:\dbms\lucene\scripts\ctl.bat (start /MIN /B E:\dbms\lucene\scripts\ctl.bat START)
if exist E:\dbms\third_application\scripts\ctl.bat (start /MIN /B E:\dbms\third_application\scripts\ctl.bat START)
goto end

:stop
echo "Stopping services ..."
if exist E:\dbms\third_application\scripts\ctl.bat (start /MIN /B E:\dbms\third_application\scripts\ctl.bat STOP)
if exist E:\dbms\lucene\scripts\ctl.bat (start /MIN /B E:\dbms\lucene\scripts\ctl.bat STOP)
rem RUBY_APPLICATION_STOP
if exist E:\dbms\subversion\scripts\ctl.bat (start /MIN /B E:\dbms\subversion\scripts\ctl.bat STOP)
if exist E:\dbms\jetty\scripts\ctl.bat (start /MIN /B E:\dbms\jetty\scripts\ctl.bat STOP)
if exist E:\dbms\hypersonic\scripts\ctl.bat (start /MIN /B E:\dbms\server\hsql-sample-database\scripts\ctl.bat STOP)
if exist E:\dbms\resin\scripts\ctl.bat (start /MIN /B E:\dbms\resin\scripts\ctl.bat STOP)
if exist E:\dbms\apache-tomcat\scripts\ctl.bat (start /MIN /B /WAIT E:\dbms\apache-tomcat\scripts\ctl.bat STOP)
if exist E:\dbms\openoffice\scripts\ctl.bat (start /MIN /B E:\dbms\openoffice\scripts\ctl.bat STOP)
if exist E:\dbms\apache\scripts\ctl.bat (start /MIN /B E:\dbms\apache\scripts\ctl.bat STOP)
if exist E:\dbms\ingres\scripts\ctl.bat (start /MIN /B E:\dbms\ingres\scripts\ctl.bat STOP)
if exist E:\dbms\mysql\scripts\ctl.bat (start /MIN /B E:\dbms\mysql\scripts\ctl.bat STOP)
if exist E:\dbms\postgresql\scripts\ctl.bat (start /MIN /B E:\dbms\postgresql\scripts\ctl.bat STOP)

:end

