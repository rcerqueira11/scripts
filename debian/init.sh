#To fix the dpkg -i broke 
sudo apt --fix-broken install
sudo apt-get install dconf-editor


#sudo rm /var/lib/dpkg/lock
#sudo dpkg --configure -a

sudo dpkg -i installers/code_1.15.0-1502309460_amd64.deb 
sudo dpkg -i installers/slack-desktop-2.7.0-amd64.deb
sudo dpgk -i installers/zoom_amd64.deb
