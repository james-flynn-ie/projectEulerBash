#!/bin/bash
# If we list all the natural numbers below 10 that are multiples of 3 or 5,
# we get 3, 5, 6 and 9. The sum of these multiples is 23.
# Find the sum of all the multiples of 3 or 5 below 1000.

sum=0

n=1

while [ $n -lt 1000 ]; do

    if [ $(($n % 3)) -eq 0 ] || [ $(($n % 5)) -eq 0 ]; then

        sum=$(($sum+n))

    fi

    n=$(($n+1))

done

echo "The sum of all multiples of 3 or 5 below 1000 is $sum"
