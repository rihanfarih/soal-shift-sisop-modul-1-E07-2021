#!/bin/bash

date_today=$(date +%d-%m-%Y)
zip -P "$date_today" Koleksi.zip -r Kucing_* Kelinci_*

