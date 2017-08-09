
nombre_bd="$1"
nombre_sql="$2"

if psql -lqt -h localhost -p 5432 -U postgres | cut -d \| -f 1 | grep -qw "$nombre_bd"; then
	echo "Borrando bd $nombre_bd porque ya existe"
	dropdb -h localhost -p 5432 -U postgres "$nombre_bd"
fi

echo "Creando bd temporal"
createdb -h localhost -p 5432 -U postgres "$nombre_bd"

echo "Creando dump.sql de la bd"
psql -h localhost -p 5432 -U postgres "$nombre_bd" < "$nombre_sql"




