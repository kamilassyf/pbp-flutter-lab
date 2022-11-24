# **TUGAS - 07**

## Jelaskan apa yang dimaksud dengan stateless widget dan stateful widget dan jelaskan perbedaan dari keduanya.
 
1. stateless widget adalah widget yang tidak bisa diubah (statis) atau bersifat immutable. ketika terjadi pemanggilan apapun tidak akan terjadi perubahan pada apps. Contohnya adalah logo aplikasi, versi, dan lainnya yang bersifat statis atau tidak membutuhkan perubahan apapun

2. stateful widget adalah widget yang dapat berubah (dinamis) atau bersifat mutable. widget ini dapat berubah sesuai dengan pemanggilannya. Contohnya adalah penggunaan CheckBox, RadioButton, dan lainnya

 
## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.
 
 widget yang digunakan pada proyek kali ini adalah stateless Widget dan stateful Widget

 1. penggunaan stateless Widget adalah untuk title dan root dari aplikasi. 

2. penggunaan sateful widget digunakan untuk melakukan perubahan terhadap isi ketika button tambah dan kurang dipencet. Pada class *_MyHomePageState* melakukan extends terhadap *State<MyHomePage>*. Pada kondisi ini stateful widget akan melakukan overrides terhadap createState() dan akan me-*return* sebuah State yang digunakan ketika UI berubah.



 
## Apa fungsi dari setState()? Jelaskan variabel apa saja yang dapat terdampak dengan fungsi tersebut.

fungsi dari setState() adalah untuk melakukan update atau rebuild terhadap user interface (UI). Pada implementasi tugas 07, variabel yang terdampak antara lain counter (perubahan pada nilai counter), textType (text genap/ganjil sesuai nilai counter), dan styleType (warna pada textType).
 
## Jelaskan perbedaan antara const dengan final.

1. final : keyword untku membuat variable yang bersifat immutable. penginisiasian value dari variablenya tidak wajib memiliki nilai secara langsung atau eksplisit ketika dikompliasi

2. const : keyword untku membuat variable yang bersifat immutable. penginisiasian value dari variablenya wajib memiliki nilai saat  dikompliasi

 
 
## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Mengimplementasikan tombol + dan - dengan logika counter genap dan ganjil

    a.  mengimplementasi fungsi _incrementCounter untuk menambahkan angka sebanyak satu satuan ketika tombol dengan icon add diklik
    
    b. mengimplementasi fungsi decrementCounter untuk mengurangi angka sebanyak satu satuan ketika tombol dengan icon remove diklik

    c. mengubah warna teks menjadi biru ketika angka bernilai ganjil 

    d. mengubah warna teks menjadi merah ketika angka bernilai genap 


2. Melakukan add-commit-push ke repositori baru di GitHub dengan nama pbp-flutter-lab



# **TUGAS - 08**

## Jelaskan perbedaan Navigator.push dan Navigator.pushReplacement.

1. Navigator.push: proses push terjadi dengan menimpa rute/layer sebelumnya. 

2. Navigator.pushReplacement : proses push terjadi dengan membuang rute/layer sebelumnya. 
 
## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

DropdownButton -> membuat opsi dropdown/pilihan untuk memilih input

Spacer ->  membuat jarak antar widget

TextFormField -> memasukan input dari user

Card -> membuat Card untuk menampilkan input
 
Form -> container untuk menggabungkan beberapa input  

Container -> menampung beberapa komponen

Column, Padding, Row -> menyesuaikan posisi sesuai perintah 

TextStyle -> membuat styling tulisan seperti warna tulisan dsb



## Sebutkan jenis-jenis event yang ada pada Flutter (contoh: onPressed).

- OnPressed

- OnChange

- OnSaved

- OnTap



## Jelaskan bagaimana cara kerja Navigator dalam "mengganti" halaman dari aplikasi Flutter.

Navigator bekerja seperti stack yaitu dengan konsep last in first out. Last in first out adalah memunculkan yang paling lama/atas. Ketika terjadi push pada navigator, layar yang ditampilkan adalah urutan paling atas/lama dari stack.



## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.

1. Menambahkan drawer/hamburger yang berisi 3 navigasi pada hamburger  di file data.dart, main.dart, form.dart

2. Membuat halaman form pada form.dart dengan membuat elemen input String untuk judul, int untuk nominal, dan dropdown untuk tipe budget. Kemudian menambahkan button 'simpan' untuk menyimpan input

3. Membuat halaman data pada data.dart. pada halaman ini menampilkan input yang telah dimasukan pada form.

4. Melakukan add-commit-push pada github pbp-flutter-lab. 


# **TUGAS - 09**

## Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat model sebelum melakukan pengambilan data JSON?

--> Pengambilan data JSON tanpa menggunakan model sebenarnya bisa. Namun, kita tidak bisa membuat data ditampilkan sesuai dengan keinginan kita sehingga struktur yang ditampilkan tidak dapat dicustom.


## Sebutkan widget apa saja yang kamu pakai di proyek kali ini dan jelaskan fungsinya.

- Column, Padding, Row -> menyesuaikan posisi sesuai perintah 

- listView -> menampilkan contentnya sehingga bisa utk di scrolling


## Jelaskan mekanisme pengambilan data dari json hingga dapat ditampilkan pada Flutter.

1. Menambahkan dependensi HTTP ke dalam proyek 

2. Membuat model sesuai json yang akan di get

3. Membuat HTTP request ke web service dengan method GET

4. Melakukan konversi objek menjadi model yang dibuat 

5. Menampilkan data dengan widget FutureBuilder


## Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas.
1. Menambahkan drawer/hamburger yang berisi 3 navigasi pada hamburger  di file data.dart, main.dart, form.dart, dan watch_list_page.dart

2. Membuat folder model yang berisikan file watch_list.dart sebagai model

3. Menambahkan model watch list berdasarkan tugas 3 sebelumnya dengan memanfaatkan web Quicktype

4. Menambahkan package http dan import <uses-permission android:name="android.permission.INTERNET" /> pada direktori android/app/src/main/AndroidManifest.xml

5. Membuat file pada page untuk menampilkan watch list (watchlistpage) dan detail watch list (watchlistdetails)

6. Pada file watch_list_page.dart berisi fungsi untuk menampilkan list watch list yang dapat ditekan untuk memunculkan detail (bila ditekan akan menampilkan isi detail berdasarkan fungsi pada file watch_list_detail.dart)

7. pada watch list detail menampilkan data detail film dan membuat button back yang akan kembali ke card dari watch list yang ada