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