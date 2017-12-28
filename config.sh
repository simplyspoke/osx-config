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

read -p "Would you like to run the general finder configs? (y/n) " FINDER

if [ "$FINDER" = "y" ]; then
  source configs/finder.sh
fi
