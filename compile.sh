#!/bin/sh

if [ -f "/.dockerenv" ] || [ -f "/.dockerinit" ]; then
  mkdir build
  cd build
  cmake ..
  make -j$(nproc)
else
  echo " [ ◆ ] This script should be executed inside of a docker image"
fi
