#! /bin/bash
while [ true ]; do
  select option in create added replace; do
    case $option in
    "create")
      for i in {1..5}; do
        echo >>"File${i}.txt"
      done
      ;;
    "added")
      for i in {1..5}; do
        echo "Hello World" >>"File${i}.txt"
      done
      ;;
    "replace")
    read -p "Enter the search string: " search
    read -p "Enter the replace string: " replace
      for i in {1..5}; do
       sed -i "s/$search/$replace/" File"${i}".txt
      done
      ;;
    esac
  done
done
