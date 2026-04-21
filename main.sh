#!/bin/bash

# Function to handle the return to menu
back_to_menu() {
    echo -e "\nPress [Enter] to go back..."
    read
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
            # Entering the sub-folder
            if [ -d "phishing tools" ]; then
                cd "phishing tools"
                # Running the new main.sh you created inside the folder
                if [ -f "main.sh" ]; then
                    bash main.sh
                else
                    echo "Error: main.sh not found inside 'phishing tools' folder!"
                fi
                cd .. # Returning to the main directory
            else
                echo "Error: 'phishing tools' folder not found!"
            fi
            back_to_menu
            ;;
        2)
            echo "Starting SMS Bomber..."
            if [ -f "shuvo.py" ]; then
                python3 shuvo.py
            else
                echo "Error: shuvo.py not found!"
            fi
            back_to_menu
            ;;
        3)
            echo "Exiting... Bye Shuvo!"
            exit 0
            ;;
        *)
            echo "Invalid option! Try again."
            sleep 2
            ;;
    esac
done
