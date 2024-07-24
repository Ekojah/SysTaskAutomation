n=4

for (( i=1;i<=n;i++))
do
	for((j=i;j>=i;j--))
	do
		echo -n $j
	done
	echo " "
done
