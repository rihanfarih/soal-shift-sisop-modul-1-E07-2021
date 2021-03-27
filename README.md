# Soal-Shift-Sisop-Modul-1-E07-2021

* Nizar Mayraldo	    05111940000004
* Rihan farih bunyamin	05111940000165 
* Fayha Syifa Qalbi   	05111940000185

## No.1

## No.2
Steven dan Manis mendirikan sebuah startup bernama “TokoShiSop”. Sedangkan kamu dan Clemong adalah karyawan pertama dari TokoShiSop. Setelah tiga tahun bekerja, Clemong diangkat menjadi manajer penjualan TokoShiSop, sedangkan kamu menjadi kepala gudang yang mengatur keluar masuknya barang.

Tiap tahunnya, TokoShiSop mengadakan Rapat Kerja yang membahas bagaimana hasil penjualan dan strategi kedepannya yang akan diterapkan. Kamu sudah sangat menyiapkan sangat matang untuk raker tahun ini. Tetapi tiba-tiba, Steven, Manis, dan Clemong meminta kamu untuk mencari beberapa kesimpulan dari data penjualan “Laporan-TokoShiSop.tsv”.

  * a. Steven ingin mengapresiasi kinerja karyawannya selama ini dengan mengetahui Row ID dan profit percentage terbesar (jika hasil profit percentage terbesar lebih dari 1,          maka ambil Row ID yang paling besar). Karena kamu bingung, Clemong memberikan definisi dari profit percentage, yaitu:

          Profit Percentage = (Profit Cost Price) 100
          
  * b. Clemong memiliki rencana promosi di Albuquerque menggunakan metode MLM. Oleh karena itu, Clemong membutuhkan daftar nama customer pada transaksi tahun 2017 di Albuquerque.
  * c.TokoShiSop berfokus tiga segment customer, antara lain: Home Office, Customer, dan Corporate. Clemong ingin meningkatkan penjualan pada segmen customer yang paling sedikit. Oleh karena itu, Clemong membutuhkan segment customer dan jumlah transaksinya yang paling sedikit.
  * d.TokoShiSop membagi wilayah bagian (region) penjualan menjadi empat bagian, antara lain: Central, East, South, dan West. Manis ingin mencari wilayah bagian (region) yang memiliki total keuntungan (profit) paling sedikit dan total keuntungan wilayah tersebut.
 * e.kamu diharapkan bisa membuat sebuah script yang akan menghasilkan file “hasil.txt” yang memiliki format yang ditentukan
 
#### Penjelasan 2a
  * Mencari nilai Profit Percentage
  
  `cuan=($21/($18-$21))*100` 
  
  Merupakan rumus untuk mencari profit percentage `cuan` dimana didapatkan dari profit `$21` dibagi dengan hasil dari pengurangan sales `$18` dan profit `$21` lalu dikalikan 100 sehingga didapatkan persentasenya
  
  * Mencari nilai profit percentage terbesar
    
    ```
    if (cuan>=max){
    max=cuan
    flag=$1
    }
    }
    ```
   Membandingkan Profit Percentage `cuan` dengan suatu variabel max untuk menyimpan nilai terbesar. Apabila nilai `cuan` lebih besar dibandingkan dengan   nilai max maka Profit Percentage terbesar akan disimpan di variabel max. Kemudian, `flag=$1` digunakan untuk menyimpan hasil paling besar.
   
#### penjelasan 2b
```
{
if ($10=="Albuquerque" && $2~2017){
   name[$7]+=1
   }
}
```

fungsi ini untuk mengecek apakah customer tersebut melakukan transaksi di Albuquerque dari kolom Citydengan ` $10=="Albuquerque"` setelah itu juga dicek apakah customer tersebut pada tahun 2017 melakukan transaksi di Albuquerque.

Untuk mendapatkan angka berupa string 2017 dari kolom Order ID menggunakan `$2~"2017" `. Setelah itu, nama customer akan disimpan di sebuah array `name[$7]` dimana `$7` adalah kolom Customer Name. 

#### penjelasan 2c
```
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
```
Fungsi if else ini berfungsi  untuk menghitung jumlah transaksi masing-masing segment dimana consumer dituliskan dengan $8. Untuk menghitung menggunakan counter.  yaitu `tj1` untuk consumer, `tj2` untuk corporate, dan `tj3` untuk Home office. 

#### penjelasan 2d
```
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
```
fungsi if condition digunakan untuk mengecek string south, west, east, dan central pada kolom Region `$13`. Keuntungan Total keseluruhan masing-masing region disimpan.
  

## No.3

Kuuhaku adalah orang yang sangat suka mengoleksi foto-foto digital, namun Kuuhaku juga merupakan seorang yang pemalas sehingga ia tidak ingin repot-repot mencari foto, selain itu ia juga seorang pemalu, sehingga ia tidak ingin ada orang yang melihat koleksinya tersebut, sayangnya ia memiliki teman bernama Steven yang memiliki rasa kepo yang luar biasa. Kuuhaku pun memiliki ide agar Steven tidak bisa melihat koleksinya, serta untuk mempermudah hidupnya, yaitu dengan meminta bantuan kalian. Idenya adalah :

   * a.	Membuat script untuk mengunduh 23 gambar dari "https://loremflickr.com/320/240/kitten" serta menyimpan log-nya ke file "Foto.log". Karena gambar yang diunduh acak, ada kemungkinan gambar yang sama terunduh lebih dari sekali, oleh karena itu kalian harus menghapus gambar yang sama (tidak perlu mengunduh gambar lagi untuk menggantinya). Kemudian menyimpan gambar-gambar tersebut dengan nama "Koleksi_XX" dengan nomor yang berurutan tanpa ada nomor yang hilang (contoh : Koleksi_01, Koleksi_02, ...)
   * b.	Karena Kuuhaku malas untuk menjalankan script tersebut secara manual, ia juga meminta kalian untuk menjalankan script tersebut sehari sekali pada jam 8 malam untuk tanggal-tanggal tertentu setiap bulan, yaitu dari tanggal 1 tujuh hari sekali (1,8,...), serta dari tanggal 2 empat hari sekali(2,6,...). Supaya lebih rapi, gambar yang telah diunduh beserta log-nya, dipindahkan ke folder dengan nama tanggal unduhnya dengan format "DD-MM-YYYY" (contoh : "13-03-2023").
   * c.	Agar kuuhaku tidak bosan dengan gambar anak kucing, ia juga memintamu untuk mengunduh gambar kelinci dari "https://loremflickr.com/320/240/bunny". Kuuhaku memintamu mengunduh gambar kucing dan kelinci secara bergantian (yang pertama bebas. contoh : tanggal 30 kucing > tanggal 31 kelinci > tanggal 1 kucing > ... ). Untuk membedakan folder yang berisi gambar kucing dan gambar kelinci, nama folder diberi awalan "Kucing_" atau "Kelinci_" (contoh : "Kucing_13-03-2023").
   * d.	Untuk mengamankan koleksi Foto dari Steven, Kuuhaku memintamu untuk membuat script yang akan memindahkan seluruh folder ke zip yang diberi nama “Koleksi.zip” dan mengunci zip tersebut dengan password berupa tanggal saat ini dengan format "MMDDYYYY" (contoh : “03032003”).
   * e.	Karena kuuhaku hanya bertemu Steven pada saat kuliah saja, yaitu setiap hari kecuali sabtu dan minggu, dari jam 7 pagi sampai 6 sore, ia memintamu untuk membuat koleksinya ter-zip saat kuliah saja, selain dari waktu yang disebutkan, ia ingin koleksinya ter-unzip dan tidak ada file zip sama sekali.

Catatan :
   -	Gunakan bash, AWK, dan command pendukung

#### Jawaban 3a
[Soal3a.sh](https://github.com/rihanfarih/soal-shift-sisop-modul-1-E07-2021/blob/main/soal3/soal3a.sh)

#### Penjelasan 3a
---


