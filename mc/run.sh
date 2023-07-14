#!/bin/bash

flag="r"
while [[ $flag == "r" ]]; do
  sudo nice -n -10 java @args/user.txt @args/linux.txt @args/jar.txt nogui
  echo
  echo "-----------------------------------------"
  read -t 10 -p "(R)estart(1) (Q)uit(2)"
  if [[ $? -gt 128 ]]; then
    echo "timeout"
  fi
  case $REPLY in
    [RrYy1]) flag="r";;
    [QqNn2]) flag="q";;
  esac
done
