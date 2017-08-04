#!/bin/bash
 
echo "workon Sigt"
workon Sigt

echo "cd trunk_git"
cd /home/rcerqueira/PROYECTOS/Sigt/trunk_git/sigt

echo "Haciendo update"
git pull origin develop

echo "Correindo Servidor"
python manage.py runserver
                                  
