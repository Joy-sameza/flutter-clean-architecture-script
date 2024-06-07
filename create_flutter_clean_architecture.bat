@echo off
setlocal

:: Check if the path parameter is provided
if "%~1"=="" (
    echo Usage: create_clean_architecture_structure.bat [path]
    echo Example: create_clean_architecture_structure.bat C:\Projects\MyFlutterApp
    exit /b 1
)

set TARGET_PATH=%~1

:: Check if the specified path exists
if not exist "%TARGET_PATH%" (
    echo Error: The specified path "%TARGET_PATH%" does not exist.
    exit /b 1
)

:: Prompt the user to enter the list of features
set /p FEATURES="Enter the list of features (separated by spaces): "

:: Function to create a directory and add a desc.txt file
:CreateDirAndDesc
md "%TARGET_PATH%\%1"
echo %2 > "%TARGET_PATH%\%1\desc.txt"
goto :eof

:: Root level directories
call :CreateDirAndDesc "lib" "Root directory for the Flutter project source code."
call :CreateDirAndDesc "lib\core" "Contains common functionality shared across different features."
call :CreateDirAndDesc "lib\features" "Contains all the feature-specific code."

:: Core subdirectories
call :CreateDirAndDesc "lib\core\error" "Contains exception and failure classes."
call :CreateDirAndDesc "lib\core\usecases" "Contains base use case classes that define the structure of use cases."
call :CreateDirAndDesc "lib\core\utils" "Contains utility classes and functions."

:: Process each feature
for %%F in (%FEATURES%) do (
    call :CreateDirAndDesc "lib\features\%%F" "Root directory for the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\data" "Contains the data layer of the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\data\datasources" "Contains data source classes for the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\data\models" "Contains data models for the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\data\repositories" "Contains the implementation of repositories for the %%F feature."

    call :CreateDirAndDesc "lib\features\%%F\domain" "Contains the domain layer of the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\domain\entities" "Contains entity classes for the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\domain\repositories" "Contains repository interfaces for the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\domain\usecases" "Contains use case classes for the %%F feature."

    call :CreateDirAndDesc "lib\features\%%F\presentation" "Contains the presentation layer of the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\presentation\bloc" "Contains BLoC (Business Logic Component) classes for state management in the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\presentation\pages" "Contains page classes representing UI screens for the %%F feature."
    call :CreateDirAndDesc "lib\features\%%F\presentation\widgets" "Contains widget classes representing reusable UI components for the %%F feature."
)

:: Create root-level files
echo This file is used for dependency injection setup, ensuring that all dependencies are properly injected. > "%TARGET_PATH%\lib\injection_container.dart"
echo This is the entry point of the Flutter application. > "%TARGET_PATH%\lib\main.dart"

echo Folder structure and description files created successfully in %TARGET_PATH%.
endlocal
pause
