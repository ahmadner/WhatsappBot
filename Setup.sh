#!/bin/bash
sudo apt update -y
sudo apt-get update --fix-missing -y
sudo apt upgrade -y # -y 
sudo apt-get install python3 -y #install
sudo apt-get install python3-pip -y #
sudo pip3 install selenium
sudo pip3 install pytube
sudo pip3 install datetime
sudo pip3 install wikipedia
sudo apt-get install git -y
sudo git clone https://github.com/ahmadner/whatsapp.git ~/whatsappBot
sudo wget https://chromedriver.storage.googleapis.com/90.0.4430.24/chromedriver_linux64.zip -P ~/whatsappBot/temp
sudo apt-get install unzip -y
sudo unzip ~/whatsappBot/temp/chromedriver_linux64.zip -d ~/whatsappBot #
sudo chmod 777 ~/whatsappBot/chromedriver
sudo rm -rf ~/whatsappBot/temp
sudo cp ~/whatsappBot/whatsapp /bin
sudo chmod 777 /bin/whatsapp
sudo chmod -R 777 ~/whatsappBot
sudo apt-get update –fix-missing -y
whatsapp
