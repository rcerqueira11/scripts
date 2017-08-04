 #!/usr/bin/env bash

echo "Comentario para el Git Shsa"

read -r line || [[ -n "$line" ]]

Comentario="$line"

echo "Ir carpeta"
cd /media/rcerqueira/rcerqueira/Tesis/WebProject/Shsa

echo "Git status"
git status

echo "Git add all"
git add --all

echo "Git commit"
git commit -m "$Comentario"

echo "PUSH!"
git push
