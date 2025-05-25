#!/bin/bash

if [[ "$1" == "--date" ]]; then
     date

fi


if [[ "$1" == "--logs" || "$1" == "-l" ]]; then
  count=100
  if [[ -n "$2" && "$2" =~ ^[0-9]+$ ]]; then
    count=$2
  fi

  for i in $(seq 1 $count); do
    filename="log${i}.txt"
    echo "Filename: $filename" > "$filename"
    echo "Created by: skrypt.sh" >> "$filename"
    echo "Date: $(date "+%Y-%m-%d %H:%M:%S")" >> "$filename"
  done
fi

if [[ "$1" == "--init" ]]; then
  git clone https://github.com/twoj-login/projekt-git.git .
  export PATH="$PWD:$PATH"
  echo "Repozytorium sklonowane i PATH ustawione."
  exit 0
fi
