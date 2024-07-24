echo "If condition example"

read -p "enter a num" num

if ((num > 10 )); then
	echo "the num = $num is greater than 10"
else
	echo "the num = $snum is less than 10"
fi

