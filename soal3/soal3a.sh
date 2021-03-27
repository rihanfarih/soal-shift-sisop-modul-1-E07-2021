#!/bin/bash

picture_dir="/home/bulqis/Desktop/sisop"
log_dir="/home/bulqis/Desktop/sisop/Foto.log"

for i in {1..23}
do 
    if [ $i -lt 10 ]
    then wget -a $log_dir "https://loremflickr.com/320/240/kitten" -O Koleksi_0"$i"
    else wget -a $log_dir "https://loremflickr.com/320/240/kitten" -O Koleksi_"$i"
fi    
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
    let id=$id+1
done


