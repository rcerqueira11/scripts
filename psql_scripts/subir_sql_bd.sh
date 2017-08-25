
nombre_bd="$1"
nombre_sql="$2"
local_pass='123456'

if PGPASSWORD='123456' psql -lqt -h localhost -p 5432 -U postgres | cut -d \| -f 1 | grep -qw "$nombre_bd"; then
	echo "Borrando bd $nombre_bd porque ya existe"
	PGPASSWORD='123456' dropdb -h localhost -p 5432 -U postgres "$nombre_bd"
fi

echo "Creando bd"
PGPASSWORD='123456' createdb -h localhost -p 5432 -U postgres "$nombre_bd"

echo "Creando dump.sql de la bd"
PGPASSWORD='123456' psql -h localhost -p 5432 -U postgres "$nombre_bd" < "$nombre_sql"




