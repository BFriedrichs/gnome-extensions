#!/bin/bash
for script in $(ls scripts/); do
  sudo rm /usr/local/bin/${script%%.*} #unsafe but yolo
  sudo ln -s $(pwd)/scripts/$script /usr/local/bin/${script%%.*}
done
