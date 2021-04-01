#!/bin/bash

picture_dir="/home/sfayha/Documents/SISOP/modul1/soal3"
date_today=$(date +%m%d%Y)
cd "$picture_dir"

unzip -P "$date_today" Koleksi.zip 

rm ./Koleksi.zip 
