#!/bin/sh

declare -r BASE_NUMBER=2
declare -a PRIME_NUMBERS=($BASE_NUMBER)

search() {
  number=$BASE_NUMBER

  until [ $number -eq $1 ]
  do
    number=$(( number + 1 ))
    divisible=1
    for prime_number in $PRIME_NUMBERS
    do
      if [ $(($number % $prime_number)) -eq 0 ]; then
        divisible=0
      fi
    done
    if [ $divisible -eq 1 ]; then
      PRIME_NUMBERS+=("$number")
    fi
  done
}

echo Please enter the number
read -p '>> ' MAX_NUMBER
echo "Let's find Prime Numbers"

search ${MAX_NUMBER}
echo "Prime Numbers: ${PRIME_NUMBERS[@]}"
