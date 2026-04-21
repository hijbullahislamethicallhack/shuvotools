#!/bin/bash

# Simple Menu
clear
echo "===================================="
echo "      SHUVO ALL-IN-ONE TOOLS        "
echo "===================================="
echo "1. Phishing Tools"
echo "2. SMS Bomber"
echo "3. Exit"
echo "===================================="
printf "Select an option: "
read choice

case $choice in
    1)
        echo "Opening Phishing Tools..."
        cd "phishing tools" && bash main.sh
        ;;
    2)
        echo "Starting SMS Bomber..."
        python3 shuvo.py
        ;;
    3)
        exit
        ;;
    *)
        echo "Invalid choice!"
        ;;
esac
