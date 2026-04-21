#!/bin/bash

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
            # FIXED: Changed space to underscore to match your folder
            if [ -d "phishing_tools" ]; then
                cd "phishing_tools"
                # Running the internal script
                if [ -f "main.sh" ]; then
                    bash main.sh
                else
                    echo "Error: main.sh not found inside phishing_tools folder!"
                fi
                cd ..
            else
                echo "Error: Directory 'phishing_tools' not found!"
            fi
            echo -e "\nPress Enter to continue..."
            read
            ;;
        2)
            echo "Starting SMS Bomber..."
            if [ -f "shuvo.py" ]; then
                python3 shuvo.py
            else
                echo "Error: shuvo.py not found!"
            fi
            echo -e "\nPress Enter to continue..."
            read
            ;;
        3)
            echo "Goodbye!"
            exit 0
            ;;
        *)
            echo "Invalid choice!"
            sleep 1
            ;;
    esac
done
