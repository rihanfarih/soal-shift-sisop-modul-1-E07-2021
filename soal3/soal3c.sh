#!/bin/bash

#link_rabbit="https://loremflickr.com/320/240/bunny"
#link_cat="https://loremflickr.com/320/240/kitten"
picture_dir="/home/sfayha/Documents/SISOP/modul1/soal3"

#log_dir='pwd'
sekarang=$(date +"%d-%m-%Y")
kemarin=$(date --date yesterday "+%a %d-%m-%Y")
#cek_kucing="$Kucing_$kemarin"
now=$(date "+%d")
let cekdate=$now%2

#Untuk Ganjil Download Kucing
if [ $cekdate -eq 1 ]
then 
    mkdir "$picture_dir"/"Kucing_$sekarang"
    rm -r "$sekarang"
        cd "$picture_dir"/"Kucing_$sekarang" 
        for i in {1..23}
        do 
            if [ $i -lt 10 ]
            then wget -a "$picture_dir"/"Kucing_$sekarang"/Foto.log "https://loremflickr.com/320/240/kitten" -O Koleksi_0"$i".png 
            else wget -a "$picture_dir"/"Kucing_$sekarang"/Foto.log "https://loremflickr.com/320/240/kitten" -O Koleksi_"$i".png
            fi    
        done

    rdfind -deleteduplicates true "$picture_dir"/"Kucing_$sekarang"

        id=1;
        cd "$picture_dir"/"Kucing_$sekarang"
        for i in Koleksi_*.png
        do
            if [ $id -lt 10 ]
                then mv -- "$i" Koleksi_0"$id"
                else mv -- "$i" Koleksi_"$id"
            fi
            let id=$id+1
        done

#Untuk Genap Download Kelinci
else   
    mkdir "$picture_dir"/"Kelinci_$sekarang"
    rm -r "$sekarang"
        cd "Kelinci_$sekarang"
        for i in {1..23}
        do
            if [ $i -lt 10 ] 
                then wget -a "$picture_dir"/"Kelinci_$sekarang"/Foto.log "https://loremflickr.com/320/240/bunny" -O Koleksi_0"$i".png
                else wget -a "$picture_dir"/"Kelinci_$sekarang"/Foto.log "https://loremflickr.com/320/240/bunny" -O Koleksi_"$i".png    
            fi
        done

    rdfind -deleteduplicates true "$picture_dir"/"Kelinci_$sekarang"

        id=1;
        cd "$picture_dir"/"Kelinci_$sekarang"
        for i in Koleksi_*.png
        do
            if [ $id -lt 10 ]
                then mv -- "$i" Koleksi_0"$id"
                else mv -- "$i" Koleksi_"$id"
            fi
            let id=$id+1
        done
fi





