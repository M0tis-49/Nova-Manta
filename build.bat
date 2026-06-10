@echo off
setlocal
cd /d "%~dp0"

echo Installation des dependances...
python -m pip install --upgrade pip
python -m pip install pywebview pyinstaller

echo Construction de Nova Manta.exe...
python -m PyInstaller --noconfirm --onefile --windowed --name "Nova Manta" --add-data "index.html;." --add-data "game.js;." --add-data "styles.css;." launcher.py

if exist "dist\Nova Manta.exe" (
  echo.
  echo Termine ! Lance le jeu avec :
  echo   dist\Nova Manta.exe
) else (
  echo.
  echo Erreur : l'executable n'a pas ete cree.
  exit /b 1
)

endlocal
