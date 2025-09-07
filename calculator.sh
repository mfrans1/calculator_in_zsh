#!/usr/bin/env zsh

# making a simple calculator in zsh

# usage
# ./calculator.sh num1 num2 operator

if [ $# -ne 3 ]; then
  echo "Usage: $0 num1 num2 operator"
  exit 1
fi

num1=$1
num2=$2
operator=$3   

case $operator in
	+) result=$(echo "scale=5; $num1 + $num2" | bc -l);;
	-) result=$(echo "scale=5; $num1 - $num2" | bc -l);;
	\*) result=$(echo "scale=5; $num1 * $num2" | bc -l);;
	/) 
		if [ $num2 -eq 0 ]; then
			echo "ERROR - Divide by zero"
			exit 1
		fi
		result=$(echo "scale=5; $num1 / $num2" | bc -l)
		;;
esac

echo "ANSWER: $result"
