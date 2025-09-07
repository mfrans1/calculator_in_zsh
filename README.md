# calculator_in_zsh
Learning shell scripting, making a calculator
=======
# Learning the basics of shell scripting

Used this as a learning project, created a calculator using zsh. Can do basic operations (+, -, /, *) between two numbers with 5 decimal place precision. Note that the whole project can be condensed efficiently into one pipeline, I opted to have things seperated just so I can practice more (generating files, writing to files, reading from files etc).

## calculator.sh
Contains the code for the calcualtor. Perform basic operations ((+, -, /, *) for any two numbers, does floating point arithmatic. Will return an error for dividing by zero. 

#### Usage:
./calculator.sh num1 num2 operator

## running.sh
Generates a text file called num_ops.txt. 50 random pairs of numbers between -500 and 500 and a randomly selected operation (+, -, /, *) is added to num_ops.txt as a line.

#### Usage:
./running.sh

## testing.sh
Reads the num_ops.txt lines, and performs ./calculator.sh for each line, and writes the answer to answers.txt.

#### Usage:
./testing.sh
