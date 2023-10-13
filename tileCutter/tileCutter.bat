@echo off
setlocal enabledelayedexpansion

rem Set the paths relative to the "bin" directory
set "bin_dir=..\bin"
set "tile_cutter_dir=%bin_dir%\..\tileCutter"
set "source_dir=%tile_cutter_dir%\images"
set "destination_dir=%tile_cutter_dir%\tiles"

rem Initialize a counter for file selection
set /a "counter=0"

rem Create an array to store file names
set "files[0]="

rem Populate the array with files from the source directory
for %%f in ("%source_dir%\*.*") do (
    set /a "counter+=1"
    set "files[!counter!]=%%~nxf"
)

:main_menu
cls
echo ===== Main Menu =====
echo 1. List Files
echo 2. Process a File
echo 3. Exit
echo =====================
set /p "main_choice=Enter your choice (1/2/3): "

if "%main_choice%"=="1" (
    goto list_files
) else if "%main_choice%"=="2" (
    goto process_file
) else if "%main_choice%"=="3" (
    echo Exiting script.
    goto :eof
) else (
    echo Invalid choice. Please try again.
    pause
    goto main_menu
)

:list_files
cls
echo ===== Files in %source_dir% =====
for /l %%i in (1, 1, !counter!) do (
    echo %%i. !files[%%i]!
)
echo ================================
set /p "file_choice=Enter the number of the file to process (0 to go back to the main menu): "

if "!file_choice!"=="0" (
    goto main_menu
) else if !file_choice! leq !counter! (
    set "selected_file=!files[%file_choice%]!"
    goto main_menu
) else (
    echo Invalid choice. Please try again.
    pause
    goto list_files
)

:process_file
cls
echo Processing file: "!selected_file!"
rem Navigate to the "bin" directory
cd /d "%bin_dir%"
rem Execute the specified commands on the selected file
vips dzsave "%source_dir%\!selected_file!" "%destination_dir%\!selected_file!" --layout google --suffix .webp --tile-size 256 --centre --depth onetile --background 0
echo Processing completed for "!selected_file!"
rem Return to the script's directory
cd /d "%~dp0"
pause
goto main_menu
