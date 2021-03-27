#!/bin/bash

#link_cat="https://loremflickr.com/320/240/bunny"
#link_rabbit="https://loremflickr.com/320/240/kitten"
picture_dir="/home/bulqis/Desktop/sisop"

#log_dir='pwd'
sekarang=$(date +"%d-%m-%Y")
kemarin=$(date -d yesterday +"%d-%m-%Y")
cek_kucing="$Kucing_$kemarin"

if [ -d "cek_kucing" ]

mkdir "$picture_dir"/"Kelinci_$sekarang"
then
    for i in {1..23}
    do
        if [ $i -lt 10 ] 
        then wget -a "$picture_dir"/"Kelinci_$sekarang"/Foto.log "https://loremflickr.com/320/240/bunny" -O Koleksi_0"$i"
        else wget -a "$picture_dir"/"Kelinci_$sekarang"/Foto.log "https://loremflickr.com/320/240/bunny" -O Koleksi_"$i"    
    fi
    done

    rdfind -deleteduplicates true "$picture_dir"/"Kelinci_$sekarang"

    id=1;
    for i in "$picture_dir"/"Kelinci_$sekarang"
    do
        baru=$(echo "$picture_dir"/"Kelinci_$sekarang""Koleksi_%d" "$id")
    if [ $id -lt 10 ]
        then mv -- "$i" "0$baru"
        else mv -- "$i" "$baru"
    fi
        let id=$id+1
    done

mv ./Koleksi_* ./Foto.log "Kelinci_$sekarang"

else
mkdir "Kucing_$sekarang"
    for i in {1..23}
    do 
        if [ $i -lt 10 ]
        then wget -a "$picture_dir"/"Kucing_$sekarang"/Foto.log "https://loremflickr.com/320/240/kitten" -O Koleksi_0"$i" 
        else wget -a "$picture_dir"/"Kucing_$sekarang"/Foto.log "https://loremflickr.com/320/240/kitten" -O Koleksi_"$i"
    fi    
    done

    rdfind -deleteduplicates true "$picture_dir"/"Kucing_$sekarang"

    id=1;
    for i in "$picture_dir"/"Kucing_$sekarang"
    do
        baru=$(echo "$picture_dir"/"Kucing_$sekarang""Koleksi_%d" "$id")
    if [ $id -lt 10 ]
        then mv -- "$i" "0$baru"
        else mv -- "$i" "$baru"
    fi
        let id=$id+1
    done
fi
mv ./Koleksi_* ./Foto.log "Kucing_$sekarang"




