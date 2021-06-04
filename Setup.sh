#!/bin/bash
sudo apt -y update
sudo apt-get -y update --fix-missing
sudo apt -y upgrade 
sudo apt-get -y install python3
sudo apt-get -y install python3-pip
sudo pip3 install selenium
sudo pip3 install pytube
sudo pip3 install datetime
sudo pip3 install wikipedia
sudo apt-get -y install git
sudo git clone https://github.com/ahmadner/whatsapp.git ~/whatsappBot
sudo wget https://chromedriver.storage.googleapis.com/90.0.4430.24/chromedriver_linux64.zip -P ~/whatsappBot/temp
sudo apt-get -y install unzip
sudo unzip ~/whatsappBot/temp/chromedriver_linux64.zip -d ~/whatsappBot
sudo chmod 777 ~/whatsappBot/chromedriver
sudo rm -rf ~/whatsappBot/temp
sudo cp ~/whatsappBot/whatsapp /bin
sudo chmod 777 /bin/whatsapp
sudo chmod -R 777 ~/whatsappBot
sudo apt-get -y update –fix-missing
whatsapp
