@echo off
rem echo off disables the printing of every line in the script
rem @echo off disables the printing also of the word "echo"

if "%~1"=="" goto :noVEnvPath
if "%~2"=="" goto :noPythonVersion
if not "%~2"=="" goto :pythonVersionPresent

:noVEnvPath
echo You have to insert at least the virtual environment path (1rst argument after the call to this file)
pause
goto :eof

:noPythonVersion
echo It is created a virtual environment in %1 with Python version 3.6 (default)
conda create -p %1 python=3.6
echo It is created a spec-file.txt containing all the python packages...
echo Such python packages are installed in the environment created
conda list --explicit > spec-file.txt
conda install --name %1 --file spec-file.txt
pause
goto :eof

:pythonVersionPresent
echo It is created a virtual environment in %1 with Python version %2
conda create -p %1 python=%2
echo It is created a spec-file.txt containing all the python packages...
echo Such python packages are installed in the environment created
conda list --explicit > spec-file.txt
conda install --name %1 --file spec-file.txt
pause
goto :eof


