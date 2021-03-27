#!/bin/bash


bash ./soal3a.sh
sekarang=$(date +"%d-%m-%Y")
mkdir "Kucing_$sekarang"


mv ./Koleksi_* ./Foto.log "Kucing_$sekarang"

