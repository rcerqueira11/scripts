


nombre_bd="$1" 

PGPASSWORD='lpdp**77' pg_dump -h dbsrv.cgtscorp.com -p 5432 -U postgres "$nombre_bd" > dump_"$nombre_bd".sql

echo "Si vas a subir la bd a otra revisa el owner que sea postgres"