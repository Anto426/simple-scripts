#!/bin/bash

echo "Inserisci il numero di cartelle da creare:"
read n

currentDate=$(date +'%Y-%m-%d')
backupFolder="backup_$currentDate"

echo "Creazione cartella di backup: $backupFolder"
mkdir "$backupFolder"

for ((i = 1; i <= n; i++)); do
    folderName="cartella_$i"
    echo "Creazione cartella: $folderName"
    mkdir "$backupFolder/$folderName"
done

echo "Cartelle create con successo."
