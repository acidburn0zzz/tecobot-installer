#!/bin/bash

echo "Are you sure to install the discord bot here? " && pwd
echo "Type yes or no"

read userinput

if [ "$userinput" = "yes" ]
then
    echo "Starting the ínstaller"

    file="discord/tecobot/index.js"
    if [ -f "$file" ]
    then
    	echo "$file allready exists."

        echo "Do you want to try an update of the package"
        echo "Type yes or no"

        read userinput
        if [ "$userinput" = "yes" ]
        then
            git fetch && git pull && cd discord/tecobot && npm install
        else
            echo "Installer script is now stopped"
        fi
    else
    	echo "$file does not exists. Installing package from github..."
        mkdir discord && cd discord && git clone https://github.com/ZombyMedia/tecobot.git && cd tecobot && npm install && echo "Installation completed"
    fi

else
    echo "Installer script is now stopped"
fi
