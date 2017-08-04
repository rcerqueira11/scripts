#!/usr/bin/env bash

echo "Comentario para el Git"

read -r line || [[ -n "$line" ]]

Comentario="$line"

echo "Ir carpeta"
cd /media/rcerqueira/rcerqueira/Tesis/Seminario

echo "Git status"
git status

echo "Git add all"
git add --all

echo "Git commit"
git commit -m "$Comentario"

echo "PUSH!"
git push

echo "All ヾ(⌐■_■)ノ♪ UP!"
sleep 2s
