#!/bin/bash

echo "Are you sure to install the discord bot here? " && pwd
echo "Type yes or no"

read userinput

if [ "$userinput" = "yes" ]
then
    echo "Starting the ínstaller"

    mkdir discord && cd discord && git clone https://github.com/ZombyMedia/tecobot.git && cd tecobot && npm install && echo "Installation completed"
else
    echo "Installer script is now stopped"
fi
