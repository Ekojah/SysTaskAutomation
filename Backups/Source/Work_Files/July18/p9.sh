:<<'End'

a=0
while [ "$a" -lt 5 ]
do
	echo $a
	a=`expr $a +1`
done



for var in 0 1 2 3 4 5 6
do
	echo $var
done

End

cnt=0
until (( cnt > 10 ))
do
	echo $cnt
	((cnt++))

done
