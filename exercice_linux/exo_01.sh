#!/bin/zsh
echo "ceci est un exercice bash"
echo "-------------------------"
op="output"
mkdir -p "$op"

# Création des fichiers
for i in {1..10}; do 
  if [ ! -f "./${op}/file_${i}.txt" ]; then
	touch "./${op}/file_${i}.txt"
	echo "file_${i}.txt created successfully"
  fi
done

echo "\n\n"

 for i in {1..3}; do
	# Choisir un fichier au hasard et écrire "error"
	random_file=$(find "./${op}" -name "*.txt" | shuf -n 1)
	echo "Give write acces to other in file ${random_file}"
	chmod o+w "${random_file}"
	echo "Random file: ${random_file}"  >> repport.txt
	echo "error ${i} in ${random_file}" >> "${random_file}"
done

echo "\n\n" >> repport.txt

find -name "file_*.txt" -size +5c -exec ls -l {} \; >> repport.txt

echo "\n"

find -name "file_*.txt" -size +5c -exec cat {} \;

echo "\n"

cat repport.txt

find ! -name "*.sh" -delete
echo "\n\n  All files are deleted succesfully ! 😀"
