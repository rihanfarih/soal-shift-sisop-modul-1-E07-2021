#!/bin/bash

date_today=$(date +%d-%m-%Y)
zip -P "$date_today" Koleksi.zip -rem Kucing_* Kelinci_*

