#!/bin/bash

echo "workon Sigt"
workon Sigt

echo "cd PROYECTOS/sigt_vrtn/sigt_vrtn/"
cd PROYECTOS/sigt_vrtn/sigt_ventrega_rtn/

echo "Haciendo update"
svn up

echo "Correindo Servidor"
python manage.py runserver	
