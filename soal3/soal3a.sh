#!/bin/bash

picture_dir="/home/bulqis/Desktop/sisop"
log_dir="/home/bulqis/Desktop/sisop/Foto.log"

for i in {1..23}
do 
    wget -a $log_dir "https://loremflickr.com/320/240/kitten" -O Koleksi_$i    
done

rdfind -deleteduplicates true 

id=1;
for i in $picture_dir
do
    baru=$(echo $picture_dir"Koleksi_%d" "$id")
if [ $id -lt 10 ]
then mv -- "$i" "0$baru"
else mv -- "$i" "$baru"
fi
done


