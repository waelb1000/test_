#!/bin/bash


## Imprimer world 
echo "world"

# variables unix 

echo "path:"$PATH 
echo "pwd:"$PWD
echo "shell:"$SHELL

# variable creation
echo "variable creation"
var1="hello"
echo $var1
## ``
listfile=`ls`
echo $listfile


# boucle for 
echo -e "\n\nboucle for"
for i in $listfile
do 
  echo $i
done
# list files/dir in the current directory
  713  ls

  # make a directory
  714  mkdir fichiertest
  #go to a specific path
  715  cd fichiertest/

  #écrire sur un fichier vide car le > seul écrase le contenu existant 
  716  echo -e "titi\ntoto\ttutu\ntititototutu" > fichier1.txt
  # cat : lire les fichiers de petites taille seulement si non on fait un less
  717  cat fichier1.txt 
  # grep : retourne la/les lignes contenant "titi"
  718  grep titi fichier1.txt 
  #la commande cut : extraire des colonnes spécifiques des lignes de texte: dans ce cas la colonne 2 
  721  cut -f2 fichier1.txt 
  # -d pour spécifier le délimiteur: breaks the output of a program so that it can be both displayed and saved in a file
  722  cut -f2 -d'\t' fichier1.txt 
  # se renseigner sur la commande cut 
  723  cut --help
  724  man cut
  #écrire dans un nouveau fichier 
  725  echo -e "titi:tutu:toto\nvivi:vuvu:vovo" > fichier2.txt
  #afficher le contenu du fichier2 (petite taille)
  726  cat fichier2.txt 
# couper la 3ème colonne du fichier2.txt , le délimiteur est ":"
  727  cut -f3 -d':' fichier2.txt 
  #ajouter à la fin du fichier2 une nouvelle ligne sans l'écraser 
  728  echo "titi:vivi:dodo" >> fichier2.txt 

# retourne les lignes contenant "titi" et couper la deuxième colonne du résultat
  730  grep "titi" fichier2.txt | cut -f2 -d':'

#afficher l'history de mon terminal 
  731  history

#ajouter les 25 dernière lignes de l'history de mon terminal au fichier monpremierbash.sh 
  737  history |  tail -n 25 >> /home/wael/monpremierbash.sh
