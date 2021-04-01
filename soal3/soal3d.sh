#!/bin/bash

picture_dir="/home/sfayha/Documents/SISOP/modul1/soal3"
date_today=$(date +%m%d%Y)
cd "$picture_dir"

zip -P "$date_today" -m Koleksi.zip -r Kucing_* Kelinci_*


