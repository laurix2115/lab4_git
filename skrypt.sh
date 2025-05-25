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

if [[ "$1" == "--help" || "$1" == "-h" ]]; then
  echo "Dostępne opcje:"
  echo "--date, -d         Wyświetla aktualną datę"
  echo "--logs, -l [N]     Tworzy N plików logx.txt (domyślnie 100)"
  echo "--help, -h         Wyświetla tę pomoc"
  exit 0
fi
fi
