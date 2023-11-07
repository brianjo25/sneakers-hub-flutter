 Readme Tutorial 7 : Elemen Dasar Flutter
 
 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?
 Stateless widget dapat dikatan sebagai widget statis yang berarti widget tersebut tidak berubah. 
 Stateful Widget merupakan widget yang dinamis, widget dapat merubah tampilannya sesuai response dari events yang dipicu baikdari interaksi users maupun adanya variabel atau nilai baru yang didapat.

 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.


 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
Pengerjaan tugas kali ini diawali dengan download flutter dan android studio dan melaukan set upnya.  Setelah itu, kita membuat aplikasi dengan nama sendiri, disini sasya menggunakan nama sneakers_hub. Setelah itu, melakukan import 'package:flutter/material.dart'; dan memindahkan class MyHomePage dan Class _MyHomePageState ke file menu.dart. Lalu melakukan import 'package:shopping_list/menu.dart'. 

Selesai dari situ, mulai bermain dengan warna. Mengubah warna pada main.dart dengan colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),. Setelah itu isi dari MyHomePage dihapus dan meninggalkan MyHomePage(). Setelah itu, super.key diubah menjadi ({Key? key}) : super(key: key);, menghapus Final String Title, dan menghapus fungsi state yang ada di bawah bagian stateless widget.

Kemudian kita menambahkan teks dan card. Di awali dengan define tipe pada list dengan class ShopItem dan melengkapi dengan final List`<ShopItems>`items. Setelah itu kode pada Widget Build juga diubah. Dari sini kita sudah bisa menjalani aplikasi kita

 Referensi :
 - https://www.kawankoding.id/flutter-stateless-vs-stateful/
