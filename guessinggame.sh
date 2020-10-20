#!/usr/bin/env bash
numberOfDir=$(ls -1 | wc -l)

function input {
    echo -e "\nCan you guess how many files are in the current directory?"
    read guess
}

input

while [[ $guess -ne $numberOfDir ]]
do
    if [[ $guess -lt $numberOfDir ]]
    then
        echo "Its too low , Try again Please ."
    else
        echo "Its too high , Try again Please ."
    fi
    input
done

echo "Well done! It is the correct answer."
