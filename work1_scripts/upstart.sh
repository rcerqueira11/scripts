#!/bin/bash
 
echo "workon Sigt"
workon Sigt

echo "cd PROYECTOS/Sigt/trunk/sigt/"
cd PROYECTOS/Sigt/trunk/sigt/

echo "Haciendo update"
#svn up

echo "Correindo Servidor"
python manage.py runserver
                                  
