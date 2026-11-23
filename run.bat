@echo off
REM Build and launch Tutor Seba
cd /d "%~dp0"

if not exist bin mkdir bin

echo Compiling...
javac -d bin Start.java Classes\*.java
if errorlevel 1 (
    echo.
    echo Compilation failed. Make sure the JDK is installed and javac is on your PATH.
    pause
    exit /b 1
)

echo Starting Tutor Seba...
java -cp bin Start
