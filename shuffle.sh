#!/bin/bash

x=123456789
start_time=$SECONDS
for((j=9;j>0;j--))
do
	((r=RANDOM%j + 1))
	let "n = 10 - j"
	while [ "$n" -eq "${x:r-1:1}" ] && [ "$n" -ne 9 ]
	do
		echo -ne "Number equal, shuffling again\n"
		((r=RANDOM%j + 1))
	done
	echo -e "Processing ${x:r-1:1} for image $n.jpg. \n"
        python hybrid.py hybrid orig/${x:r-1:1}.png orig/$n.png -c 4 6 -o conv/$n.png
	echo -e "done for image $n.png \n"
	x=${x:0:r-1}${x:r}
done
echo -e "Removing back background\n"
mogrify -fuzz 25% -transparent black conv/*.png
echo -e "done stuff\n"
end_time=$SECONDS
echo "Script took $((end_time-start_time)) seconds"
