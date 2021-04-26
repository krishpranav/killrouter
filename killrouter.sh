#!/bin/bash

trap ctrl_c INT

s="s"

# colors
blanco="\033[1;37m"
violeta="\033[0;35m"
rojo="\033[1;31m"
verde="\033[1;32m"
amarillo="\033[1;33m"
violeta2="\033[0;35m"
azul="\033[1;34m"
nc="\e[0m"
mon="mon"

function ctrl_c() {
echo -e "You pressed ctrl+c"
}

aircrack-ng
