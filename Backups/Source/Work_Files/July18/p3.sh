#!/bin/bash

echo "basic calculator"

add()
{
	result = $(echo "$1 + $2" | bc )
	echo "Result = $result"
}

sub()
{
        result = $(echo "$1 - $2" | bc )
        echo "Result = $result"
}

prod()
{
        result = $(echo "$1 * $2" | bc )
        echo "Result = $result"
}

quot()
{
        result = $(echo "$1 / $2" | bc )
        echo "Result = $result"

}

echo "1 add 2 sub 3 mul 4 div"

read -p "Enter the choice = " ch
read -p "Enter the value 1 = " num1
read -p "Enter the value 2 = " num2

case $ch in
	1) add $num1 $num2 ;;
	2) sub $num1 $num2 ;;
	3) prod $num1 $num2 ;;
	4) quot $num1 $num2 ;;

esac
