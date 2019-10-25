#! /bin/bash
# Each new term in the Fibonacci sequence is generated by 
# adding the previous two terms. By starting with 1 and 2,
# the first 10 terms will be:
# 1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...
#By considering the terms in the Fibonacci sequence whose
# values do not exceed four million, 
# find the sum of the even-valued terms.

num1=1
num2=1
sum=0

while [ $num2 -lt 4000000 ]

do

        if [ $(($num2 % 2)) -eq 0 ]

        then

                sum=$(($sum + $num2))

        fi

        num1=num2

        num2=$(($num1 + $num2))
done

echo $sum
