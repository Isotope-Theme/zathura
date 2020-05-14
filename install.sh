#!/bin/bash

if [[ ! -d "$HOME/.config/zathura/" ]]; then
  mkdir -p "$HOME/.config/zathura/"
fi
VARIANTS=("dark" "light" "quit")
select variant in "${VARIANTS[@]}"; do
  case $variant in
    "dark")
      echo "Installing Isotope Dark theme to $HOME/.config/zathura/zathurarc"
      curl -s https://raw.githubusercontent.com/Isotope-Theme/zathura/master/isotope-dark.conf >> $HOME/.config/zathura/zathurarc
      break
      ;;
    "light")
      echo "Installing Isotope Light theme to $HOME/.config/zathura/zathurarc"
      curl -s https://raw.githubusercontent.com/Isotope-Theme/zathura/master/isotope-light.conf >> $HOME/.config/zathura/zathurarc
      break
      ;;
    "quit")
      break
      ;;
    *)
      echo "invalid variant $REPLY"
      ;;
  esac
done
