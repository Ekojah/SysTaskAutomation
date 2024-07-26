read -p "enter the marks = " marks

if (( $marks <0)); then
	echo "invalid marks"
elif (( $marks >100 )); then
	echo "invalid marks"
else
	echo "Valid"
fi
