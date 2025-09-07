#!/usr/bin/env zsh

# generate a text file called num_ops.txt that generates a lot of random num1 and num2 betwee
# -500 and 500, and selects random operators. Function is to test the calculator code
# usage
# ./running.sh

touch nums_ops.txt

MIN=-500
MAX=500
OPERATORS=(+ - \* /)

for (( i=0; i<50; i++)); do
	num1=$(( $RANDOM % (MAX - MIN + 1) + MIN )) # create a random num1 between -500 and 500
	num2=$(( $RANDOM % (MAX - MIN + 1) + MIN )) # ditto for num2
	operator=${OPERATORS[ $(( 1 + RANDOM % ${#OPERATORS[@]} ))  ]} # choose a random operator from the list operators (1+random) because of indexing 1,2,3,4 not 0,1,2,3
	echo $num1 $num2 $operator  >> nums_ops.txt # put nums and ops into nums_ops.txt
done 
