#!/bin/sh

declare -r POLE_LEFT='LEFT'
declare -r POLE_CENTER='CENTER'
declare -r POLE_RIGHT='RIGHT'

declare -r ZERO=0

solve() {
  if [ $1 -gt $ZERO ]; then
    hanoi $1 $POLE_LEFT $POLE_CENTER $POLE_RIGHT
  else
    echo "Can't not solve '${ZERO}'"
  fi
}

hanoi() {
  (
    if [ $1 -gt $ZERO ]; then
      NEXT_DISKS=`expr $1 - 1`

      hanoi $NEXT_DISKS $2 $4 $3
      echo "Move: $2 => $3"
      hanoi $NEXT_DISKS $4 $3 $2
    fi
  )
}

echo Please enter the number of disks
read -p '>> ' DISKS
echo "Let's solve Tower of Hanoi"

solve ${DISKS}
