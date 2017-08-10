#########################################
#	params:
#		nombre_backup: se le pasa un archivo .backup
#
#	retorno:
#		archivo.sql
#########################################



# nombre_bd="$1"
nombre_bd="bd_temporality"
nombre_backup="$1"

# pg_restore -U postgres -d  

echo "Creando bd temporal"
PGPASSWORD='123456' createdb -h localhost -p 5432 -U postgres "$nombre_bd"

echo "Ejecutando pg_restore"
PGPASSWORD='123456' pg_restore -h localhost -p 5432 -U postgres -d "$nombre_bd" "$nombre_backup"

echo "Creando dump.sql de la bd"
PGPASSWORD='123456' pg_dump -h localhost -p 5432 -U postgres "$nombre_bd" > dump_"$nombre_bd".sql

echo "Borrando db temporal"
PGPASSWORD='123456' dropdb -h localhost -p 5432 -U postgres "$nombre_bd"



# pg_dump -h dbsrv.cgtscorp.com -p 5432 -U postgres pruebas_xiomara > ssss.sql
# pg_restore -h dbsrv.cgtscorp.com -p 5432 -U postgres -d prueba_a 
# 
# createdb -h dbsrv.cgtscorp.com -p 5432 -U postgres "$nombre_bd"

# pg_restore -h dbsrv.cgtscorp.com -p 5432 -U postgres -d "$nombre_bd" "$nombre_backup"