#!/bin/bash

# Install Colordiff 
echo "workon Sigt"
workon Sigt

echo "cd PROYECTOS/Sigt/trunk/sigt/"
cd PROYECTOS/Sigt/trunk/sigt/

echo "Correindo Servidor"
python manage.py runserver	