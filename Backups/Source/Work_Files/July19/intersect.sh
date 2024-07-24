n=8
i=1
j=$n

while ((j>i ))
do
	echo -n "$j	 $i	"
	((j--))
	((i++))
done
