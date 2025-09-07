#!/usr/bin/env zsh

# testing the calculator we made

touch answers.txt

data=`cat nums_ops.txt`

while IFS=' ' read -r num1 num2 operator; do
	./calculator.sh "$num1" "$num2" "$operator" >> answers.txt
done < nums_ops.txt
