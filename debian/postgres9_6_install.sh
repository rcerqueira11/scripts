deb http://apt.postgresql.org/pub/repos/apt/ stretch-pgdg main
wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | sudo apt-key add -
sudo apt-get update 
sudo apt-get install postgresql-9.6 
