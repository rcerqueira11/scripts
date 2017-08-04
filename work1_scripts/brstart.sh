#!/bin/bash

#
echo "workon Sigt"
workon Sigt

echo "cd PROYECTOS/sigt_rtn/sigt_vrtn/"
cd PROYECTOS/sigt_rtn/sigt_vrtn/

echo "Correindo Servidor"
python manage.py runserver	