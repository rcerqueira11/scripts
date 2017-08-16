
sudo rm /var/lib/dpkg/lock
sudo dpkg --configure -a


#To fix the dpkg -i broke 
sudo apt --fix-broken install
sudo apt-get install dconf-editor


