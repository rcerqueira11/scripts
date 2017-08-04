#!/bin/bash

#
echo "workon Sigt"
workon Sigt

echo "cd PROYECTOS/sigt_rtn/sigt_vrtn/"
cd PROYECTOS/sigt_vpagos/sigt_vpagos/

echo "Haciendo update"
svn up

echo "Correindo Servidor"
python manage.py runserver	
