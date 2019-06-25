# !/bin/bash

# Update tutorial :
# ------------------
# Permet de convertir les tutos sous google docs en codelabs 
# puis de les envoyer sur git via pull request

read -p "Quel est l'ID du googledoc à mettre à jour?" TUTO_ID

claat export $TUTO_ID

git add *
git commit -m 'update'
git pull
git push

echo "Codelab mis à jour et partagé"

read -p "Appuyer sur une touche pour fermer ..."
exit