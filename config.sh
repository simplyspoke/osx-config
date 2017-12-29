#!/bin/bash

# Create a diretory variable
dir="$(dirname "$0")"

echo "Do you wish to configure this worksation?"
select yn in "Yes" "No"; do
    case $yn in
        Yes ) break;;
        No ) exit;;
    esac
done

read -p "\nWould you like to run the general finder configs? (y/n)\n" FINDER

if [ "$FINDER" = "y" ]; then
  source scripts/finder.sh
fi

read -p "\nWould you like to run the general hombrew installs? (y/n)\n" HOMEBREW

if [ "$HOMEBREW" = "y" ]; then
  source scripts/homebrew.sh
fi
