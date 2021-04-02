#!/bin/bash

#no 1a

error=$(grep -E "ERROR" syslog.log)
info=$(grep -E "INFO" syslog.log)
jumlaherror=$(grep -c 'ERROR' syslog.log)
jumlahinfo=$(grep -c 'INFO' syslog.log)

#echo $error
#echo $info
#echo $jumlaherror
#echo $jumlahinfo

#no 1b
pesan_error=$(grep -oP "(?<=ERROR ).*(?<=\ )" "$syslog.log") 
hitung_pesan=$(echo "$pesan_error" | sort | uniq -c | sort -nr)
#echo $pesan_error
#echo $hitung_pesan

#no 1c
userCount=$(grep -P -o "$(?<=[(])(.*)(?=[)])" $syslog.log | sort -n | uniq -c) 
userList=$(grep -P -o "$(?<=[(])(.*)(?=[)])" $syslog.log | sort -u)
