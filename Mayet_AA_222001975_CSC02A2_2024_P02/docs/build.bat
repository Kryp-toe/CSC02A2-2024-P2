@ECHO OFF
REM Clear the screen to show only output of batch file
CLS
REM 222001975
REM Computer Science 2A 2024
REM Set path for JDK
SET JAVA_HOME="C:\jdk-21"
SET PATH=%JAVA_HOME%\bin;%PATH%;

REM check jdk version
javac -version

REM go to parent directory
cd..
REM folder variables
set PRAC_BIN=.\bin
set PRAC_SRC=.\src
set PRAC_DOC=.\docs

REM Clean old class files in bin
del %PRAC_BIN%\*.class

REM Compiling code
ECHO Trying to compile
javac -sourcepath %PRAC_SRC% -cp %PRAC_BIN% -d %PRAC_BIN% %PRAC_SRC%\Main.java

REM Create JavaDoc
ECHO Creating Java Doc
javadoc -sourcepath %PRAC_SRC% -cp %PRAC_BIN% -use -version -author -d %PRAC_DOC%\%JAVA_DOC% -subpackages acsse

REM Clear the screen to show only the program
CLS

REM Running code
ECHO Trying to run
java -cp %PRAC_BIN% Main

REM Go back to docs folder
cd %PRAC_DOC%

PAUSE