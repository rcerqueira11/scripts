


nombre_bd="sigt_db_stage" 
nombre_bd_subir="$1"

[ -d sqls ] || mkdir sqls 

echo "Bajando dump de $nombre_bd"
pg_dump -h dbsrv.cgtscorp.com -p 5432 -U postgres "$nombre_bd" > sqls/dump_"$nombre_bd".sql

echo "Remplazando owner por postgres"
sed -i 's:usersigt_stage:postgres:g' sqls/dump_"$nombre_bd".sql 

#Si se especifica un nombre de bd la sube 
if [ "$nombre_bd_subir" ]; then
	if psql -lqt -h localhost -p 5432 -U postgres | cut -d \| -f 1 | grep -qw "$nombre_bd_subir"; then
		echo "Borrando bd $nombre_bd_subir porque ya existe"
		dropdb -h localhost -p 5432 -U postgres "$nombre_bd_subir"
	fi
	echo "Creando bd nueva"
	createdb -h localhost -p 5432 -U postgres "$nombre_bd_subir"

	echo "Subiendo datos a la nueva bd"
	psql -h localhost -p 5432 -U postgres "$nombre_bd_subir" < sqls/dump_"$nombre_bd".sql
fi