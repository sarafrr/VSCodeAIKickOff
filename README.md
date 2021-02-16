﻿# VSCodeAIKickOff
Kick off project containing settings and useful tools to automate repetitive steps made for Visual Studio Code projects regarding AI in Python.

## VSCode Project Settings
1. Download this folder in your computer and rename such folder as you want (it can be used as a base folder for a your project)
2. copy **copyenv.bat** into the *environment folder* whose configuration we want to copy
3. after opening the terminal, move into the *environment folder* from which you want to copy the configuration and launch the bat **copyenv.bat** (see the example, below). This command keeps as first argument the path to the new environment (it can contain not existent folders which will be created automatically) and as second argument the Python version which we want to set in the new environment.
So, for example, if you want to create an environment named `new_env` at the same level of the environment folder which you are going to copy and with Python version 3.7, you have to write `envcopy ../new_env 3.7`.

The User options of VSCode (global options) are in %APPDATA%\Code\User\settings.json.
Generally, to have Workspace settings (local settings) for the new project folder is preferred. Such settings are not present by default, but can be created. In this project you can find the folder .vscode which you can download and put in the project folder.

The files in the folder .vscode are:
- **settings.json** contains the Workspace settings:
	- `python.pythonPath` to specify the Python interpreter which  you  want to use for the project (the one which you have in the virtual environment just created)
	- `python.terminal.activateEnvironment` makes the VSCode to activate the conda  environment at startup
	- `terminal.integrated.shell.windows` is the default terminal console you like to use
- **launch.json** contains the settings of the debugging mode which in general have to be left as they are

*Note*: to use the new folder settings it is necessary to open the folder which contains the project.

## .gitignore
Into the .gitignore automatically generated by GitHub for Python:
-  it is also not taken into account the *.tgz folders, which in general contain big datasets.

