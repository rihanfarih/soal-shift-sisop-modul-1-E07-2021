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
