# Update tutorial :
# ------------------
# Permet de convertir les tutos sous google docs en codelabs 
# puis de les envoyer sur git via pull request

echo "Lancement de la mise à jour du tuto"

TUTO_ID=1OC7XTDVL3yOAYyPX29Oa2K8PI8ibQgJRbD82YzObopg
# echo "Quel est l'ID du googledoc à mettre à jour?"
# read TUTO_ID

echo "Extraction de contenu du googledocs"
claat export $TUTO_ID

cd ..
git add *
git commit -m 'update'
git pull
git push

echo "Codelab mis à jour et partagé"

read -p "Appuyer sur une touche pour fermer ..."
exit