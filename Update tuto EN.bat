REM Update tutorial :
REM ------------------
REM Permet de convertir les tutos sous google docs en codelabs 
REM puis de les envoyer sur git via pull request

echo off

echo "Lancement de la mise a jour du tuto"

set TUTO_ID=1OC7XTDVL3yOAYyPX29Oa2K8PI8ibQgJRbD82YzObopg

echo "Extraction de contenu du googledocs"
claat export %TUTO_ID% && git add * && git commit -m 'update' && git pull && git push

echo "Codelab mis a jour et push sur git"

echo.
pause