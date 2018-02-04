#!/bin/bash
# Installer for DisplayLink on Ubuntu
# @author kf
# @since  2018-02-04
# @see    https://github.com/KevinFrantz/MB169BplusDisplayLinkInstallerUbuntu

#setup
DRIVER_FILE_ORIGIN="DisplayLink USB Graphics Software for Ubuntu 4.1.zip"
DRIVER_DIRECTORY_RUN="run"
FILE_RUN="displaylink-driver-4.1.9.run"

echo "Install dependencies..."
sudo apt-get install unzip

#main
echo "Installation procedure starts..."
if [ -f "$DRIVER_FILE_ORIGIN" ]; then
  echo "Unzip drivers..."
  unzip "$DRIVER_FILE_ORIGIN" -d "$DRIVER_DIRECTORY_RUN"

  echo "Driver installation..."
  cd "$DRIVER_DIRECTORY_RUN" || return 1
  chmod +x "$FILE_RUN"
  sudo bash "./$FILE_RUN"
  exit
fi
echo "Please download the correct drivers."
echo "See https://github.com/KevinFrantz/MB169BplusDisplayLinkInstallerUbuntu"
exit
