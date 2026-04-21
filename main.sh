#!/bin/bash

# Function to pause
pause(){
  read -p "Press [Enter] key to continue..." fakedata
}

while true
do
    clear
    echo "===================================="
    echo "       SHUVO ALL-IN-ONE TOOLS       "
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
            # Updated to match your 'phishing_tools' folder
            if [ -d "phishing_tools" ]; then
                cd "phishing_tools"
                if [ -f "main.sh" ]; then
                    bash main.sh
                else
                    echo "Error: main.sh not found inside phishing_tools!"
                fi
                cd ..
            else
                echo "Error: Directory 'phishing_tools' not found!"
            fi
            pause
            ;;
        2)
            echo "Starting SMS Bomber..."
            if [ -f "shuvo.py" ]; then
                python3 shuvo.py
            else
                echo "Error: shuvo.py not found!"
            fi
            pause
            ;;
        3)
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            sleep 1
            ;;
    esac
done
