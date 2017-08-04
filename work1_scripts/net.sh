#!/bin/bash

#2995

echo "Disconect wifi"
nmcli nm enable false

echo "ifdown"
sudo ifdown eth0

echo "ifup"
sudo ifup eth0

exit

