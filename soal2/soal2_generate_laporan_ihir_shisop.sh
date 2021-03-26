#!/bin/bash
export LC_ALL=C
awk 'BEGIN { FS="\t" } 

#bismillah2a
{
cuan=($21/($18-$21))*100

if (cuan>=max){
max=cuan
flag=$1
   }
}

#berdoa2b
{
if ($10=="Albuquerque" && $2~2017){
   name[$7]+=1
   }
}

#mukjizat2c
{
if ($8=="Consumer"){
   tj1+=1}
else if ($8=="Corporate") {
   tj2+=1}
else if ($8=="Home Office") {
   tj3+=1}
hasil=0
if (tj1<tj2 && tj1<tj3){
   segmen="Consumer"
   hasil=tj1}
else if (tj2<tj1 && tj2<tj3){
   segmen="Corporate"
   hasil=tj2}
else if (tj3<tj2 && tj3<tj1){
   segmen="Home Office"
   hasil=tj3}
}

#aamiini2d
{
if ($13=="South"){
   p1+=$21}
else if ($13=="West"){
   p2+=$21}
else if ($13=="East"){
   p3+=$21}
else if ($13=="Central"){
   p4+=$21}
jawaban=0
if (p1<p2 && p1<p3 && p1<p4){
   daerah="South"
   jawaban=p1
}
else if (p2<p1 && p2<p3 && p2<p4){
   daerah="West"
   jawaban=p2
}
else if (p3<p1 && p3<p2 && p1<p4){
   daerah="East"
   jawaban=p3
}
else if (p4<p1 && p4<p2 && p4<p3){
   daerah="Central"
   jawaban=p4
}
}
END{
printf ("Transaksi terakhir dengan profit percentage terbesar yaitu %d dengan persentase %f%%\n\n", flag, max)

printf ("Daftar nama customer di Albuquerque pada tahun 2017 antara lain:\n")
   for (i in name){
   print (i)
   }
printf("\n")

printf ("Tipe segmen customer yang penjualannya paling sedikit adalah %s dengan %d transaksi\n\n", segmen, hasil)

printf ("Wilayah bagian (region) yang memiliki total keuntungan (profit) yang paling sedikit adalah %s dengan total keuntungan %f\n", daerah, jawaban)
}' Laporan-TokoShiSop.tsv > hasil.txt
