declare -A cities
cities=(
	["AAAA"]=999
	["BBBB"]=888
	["CCCC"]=666
)
echo "${cities[@]}"

echo "${cities["CCCC"]}"

echo " keys of the array	${!cities[@]}"

for city in "${!cities[@]}";
do
	echo "$city = ${cities[$city]}"
done

for city in "${!cities[@]}";
do
        echo "$city = "
done

echo -e "\nvalues\n"
for value in "${cities[@]}";
do
        echo "$city = "
done


