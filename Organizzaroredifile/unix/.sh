#!/bin/bash

echo "Welcome to this script"

year=$(date +'%Y')
new_year=$((year + 1))
backupFilename="A${year}-${new_year}"

list_file="namesubfolder.txt"
list_1=()

# Leggi i nomi delle cartelle dal file di testo e aggiungili all'array
while IFS= read -r line; do
    list_1+=("$line")
done <"$list_file"

echo "$backupFilename"

for dir in "${list_1[@]}"; do
    echo "Creating directory $dir"
    mkdir -p "$backupFilename/$dir"
    cp ./1.sh "$backupFilename/$dir"
done
