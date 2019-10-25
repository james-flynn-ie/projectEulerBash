#!/bin/bash

# The prime factors of 13195 are 5, 7, 13 and 29.
# What is the largest prime factor of the number 600851475143 ?

n=600851475143

# We can skip 1, as it's not a prime.
d=2

while [ $n -ne 1 ]; do
    if [ $(($n % $d)) -eq 0 ]; then
        n=$(($n / $d))
    else
        d=$(($d + 1))
    fi
done

echo "The largest prime factor of $n is $d"
