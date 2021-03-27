#!/bin/bash

date_today=$(date +%d-%m-%Y)
unzip -P "$date_today" Koleksi.zip 

rm ./Koleksi.zip 

