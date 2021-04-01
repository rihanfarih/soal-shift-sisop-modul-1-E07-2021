#!/bin/bash

picture_dir="/home/sfayha/Documents/SISOP/modul1/soal3"
#log_dir="/home/sfayha/Documents/SISOP/modul1/soal3/Foto.log"

for i in {1..23}
do 
    if [ $i -lt 10 ]
    then wget -a "$picture_dir"/Foto.log "https://loremflickr.com/320/240/kitten" -O "$picture_dir"/Koleksi_0"$i".png
    else wget -a "$picture_dir"/Foto.log "https://loremflickr.com/320/240/kitten" -O "$picture_dir"/Koleksi_"$i".png
fi    
done

rdfind -deleteduplicates true "$picture_dir"

id=1;
cd "$picture_dir"
for i in Koleksi_*.png
do
    #baru=$( $picture_dir"Koleksi_0%d" "$id")
    #baru=$( $picture_dir"Koleksi_%d" "$id")
if [ $id -lt 10 ]
    then mv -- "$i" Koleksi_0"$id"
    else 
        mv -- "$i" Koleksi_"$id"
fi
    let id=$id+1
done

