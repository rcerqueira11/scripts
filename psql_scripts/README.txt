####################################

subir_sql_bd.sh

desc:
	'''Sube el backup a la bd que se le pase '''

params:  
	nombre_bd
	nombre_sql

run example:
	sh subir_sql_bd.sh produccion dump_produccion.sql


####################################

transform_backup_to_sql.sh

desc:
	'''Transforma un .backup a .sh '''

params:
	nombre_backup: se le pasa un archivo .backup

retorno:
	archivo.sql

run example:
	sh transform_backup_to_sql.sh dump_bd.backup

####################################


dump_db_from_ambiente.sh

desc:
	'''Hace un dump de una base de datos del ambiente pasandole el nombre de la bd'''

params:
	nombre_bd: nombre de la bd en el ambiente a bajar

retorno:
	archivo.sql

run example:
	sh dump_db_from_ambiente.sh sigt_db_qaint


####################################

dump_qaext, dump_qaint, dump_stage 

desc:
	'''Cada uno descarga su bd del ambiente respectivamente y de pasare un parametro como nombre de la bd, crea esa bd y le carga el dump hecho'''

params:
	OPCIONAL nombre_bd: nombre de la bd a crear localmente

retorno:
	archivo.sql

run example:
	con parametro: sh dump_qaint.sh nombre_mi_nueva_bd
	sin parametro: sh dump_qaint.sh 

WARNING: si el nombre de la bd que pasaron existe la borrara.