#!/bin/bash


echo -e "\e[31m[1]\e[0m Install oh-my-zsh and DotFiles"
echo -e "\e[31m[2]\e[0m Only DotFiles"
read user_input

if [ $user_input == "1" ]; then

  echo -e "\e[31m[*] Installing oh-my-zsh\e[0m"
  pkg install zsh
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
  chsh -s zsh

  echo -e "\e[31m[*] Installing DotFiles\e[0m"
  cp font.ttf ~/.termux/font.ttf
  cp colors.properties ~/.termux/colors.properties
  cp .zshrc ~/.zshrc
  cp theunraveler.zsh-theme ~/.oh-my-zsh/themes/theunraveler.zsh-theme
  termux-reload-settings
  echo -e "e[31m[*] Done\e[0m"

elif [ $user_input == "2" ]; then

  cp font.ttf ~/.termux/font.ttf
  cp colors.properties ~/.termux/colors.properties
  cp .zshrc ~/.zshrc
  cp theunraveler.zsh-theme ~/.oh-my-zsh/themes/theunraveler.zsh-theme
  termux-reload-settings
  echo -e "e[31m[*] Done\e[0m"

else
  echo -e "e[31m[!] Wrong Choice\e[0m"

fi
