mydata=(11 22 344 6 7 8)
echo "0---- ${mydata[0]}"
echo "1---- ${mydata[r]}"


echo "the list of array elements"
for ele in "{mydata[@]}"
do
	echo $ele
done

echo " total no of elements ${#mydata[@]}"
echo " the array = ${mydata[@]}"
