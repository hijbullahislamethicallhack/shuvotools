#!/bin/bash

# Colors
green='\e[1;32m'
blue='\e[1;34m'
clear='\e[0m'

clear
echo -e "${blue}====================================${clear}"
echo -e "${green}      SHUVO ALL-IN-ONE TOOLS       ${clear}"
echo -e "${blue}====================================${clear}"
echo -e "1. Phishing Tools"
echo -e "2. SMS Bomber"
echo -e "3. Exit"
echo -e "${blue}====================================${clear}"
read -p "Select an option: " choice

case $choice in
    1)
        cd phishing_tools && php -S localhost:8080
        ;;
    2)
        # Apnar bomber file-er naam jodi bomber.py hoy
        cd sms_bomber && python3 bomber.py
        ;;
    3)
        exit
        ;;
    *)
        echo "Invalid Choice!"
        ;;
esac