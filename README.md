 Readme Tutorial 7 : Elemen Dasar Flutter
 
 1. Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?

 Stateless Widget: 
 - dapat dikatan sebagai widget statis yang berarti widget tersebut tidak berubah. 
 - Di-build hanya dengan konfigurasi yang telah diinisiasi sejak awal.
 - Cocok untuk tampilan yang lebih sederhana dan tidak memerlukan interaksi yang ribet

 Stateful Widget:
 - merupakan widget yang dinamis, widget dapat merubah tampilannya sesuai response dari events yang dipicu baikdari interaksi users maupun adanya variabel atau nilai baru yang didapat.
 - Memungkinkan pembaruan yang bersifat dinamis dan bisa merespons interaksi dengan pengguna.
 - Bersifat lebih kompleks, memerlukan kode yang lebih kompleks dari stateless 

 2. Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.

 - MyHomePage: Widget ini adalah widget yang "mewakili" halaman utama aplikasi. Widget tersebut berisi daftar barang/item pada toko dengan tampilan GridView sebagai tampilan untuk kartu-kartu toko.

 - ShopItem: ShopItem mewakili item toko dan akan ditunjukan dalam ShopCard. Hal ini terdapat tiga atribut, yakni nama, ikon, dan warna.

 - ShopCard: Widget ini digunakan untuk membuat kartu yang akan menampilkan item toko. Widget ini terdapat tiga atribut: nama, ikon, dan warna. 

 - AppBar: Widget ini digunakan untuk membuat bagian atas dari halaman atau yang disebut dengan AppBar dalam Scaffold.

 - Icon: Widget ini digunakan untuk menampilkan ikon pada aplikasi. Dalam tugas ini, Icon digunakan untuk menampilkan ikon yang sesuai.
 
 - Material: Widget ini digunakan untuk mengatur background kartu pada ShopCard.

 - Scaffold: Widget ini digunakan untuk membuat layout dasar pada aplikasi, termasuk diantaranya AppBar dan body.
 
 - Text: Widget ini digunakna untuk menampilkan text pada aplikasi, seperti contohnya judul.

 3. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)
 
Pengerjaan tugas kali ini diawali dengan download flutter dan android studio dan melaukan set upnya.  Setelah itu, kita membuat aplikasi dengan nama sendiri, disini sasya menggunakan nama sneakers_hub. Setelah itu, melakukan import 'package:flutter/material.dart'; dan memindahkan class MyHomePage dan Class _MyHomePageState ke file menu.dart. Lalu melakukan import 'package:shopping_list/menu.dart'. 

Selesai dari situ, mulai bermain dengan warna. Mengubah warna pada main.dart dengan colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),. Setelah itu isi dari MyHomePage dihapus dan meninggalkan MyHomePage(). Setelah itu, super.key diubah menjadi ({Key? key}) : super(key: key);, menghapus Final String Title, dan menghapus fungsi state yang ada di bawah bagian stateless widget.

Kemudian kita menambahkan teks dan card. Di awali dengan define tipe pada list dengan class ShopItem dan melengkapi dengan final List`<ShopItems>`items. Setelah itu kode pada Widget Build juga diubah. Dari sini kita sudah bisa menjalani aplikasi kita

 Referensi :
 - https://www.kawankoding.id/flutter-stateless-vs-stateful/


Readme Tugas 8 : Flutter Navigation, Layouts, Forms, and Input Elements

1. Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!

Navigator.push() : Digunakan untuk menavigasi ke halaman baru sambil mempertahankan halaman saat ini ditumpukan navigasi.
Navigator.pushReplacement() : Digunakan untuk menavigasi ke halaman baru, tetapi halaman saat ini dihapus dari tumpukan navigasi.

2. Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!

Column dan Row: Column berfungsi untuk mengatur child widgets yang vertikal sedangkan Row mengatur child widget yang horizontal.
Container: Widget yang bisa mengatur spacing, padding, border, dan background.
Stack: Bisa membuat Widget bertumpuk satu dan berguna untuk membuat posisi widget secara bebas.
Flex dan Expanded: Berfungsoi untuk bikin layout yang lebih fleksibel, sedangkan expanded memamaki ruang yang ada untuk menyesuaikan child widget pada Flex.
GridView: Memunculkan item pada grid dan bisa untuk menampilkan data dalam bentuk grid.
ListView: Memunculkan daftar item yang bisa scroll ke atas dan ke bawah.


3. Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!

Product Name : Product name menyimpan nama-nama sepatu yang akan disimpan. 
Amount of Pairs: Amount of Pairs menyimpan jumlah pasang sepatu tersebut yang disimpan.
Description : Description menyimpan detail atau penjelasan terkait sepatu tersebut.
Elemen input di atas dipakai karena melengkapi aplikasi tersebut sebagai aplikasi inventory penyimpanan sneakers


4. Bagaimana penerapan clean architecture pada aplikasi Flutter?

Penerapan Clean Architecture pada Flutter melibatkan pemisahan kode program menjadi beberapa lapisan, sebagai berikut:
Data & Platform Layer: Merupakan lapisan terluar yang terdiri dari kode sumber data seperti Rest API, akses ke database lokal, Firebase, maupun sumber lainnya.
Presentation Layer: Terdiri dari kode untuk mengakses data aplikasi dari repositori. Terdapat juga kode untuk manajemen state seperti providers, BLoC, dan lainnya.
Domain Layer: Merupakan lapisan terdalam yang berisikan kode untuk logika bisnis aplikasi seperti entitas dan use case.


5. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)

Di awali dengan membuat berkas baru di dalam direktori baru widgets dengan nama left_drawer.dart dan menambahkan kode di bawah ini :

```
import 'package:flutter/material.dart';

class LeftDrawer extends StatelessWidget {
  const LeftDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          const DrawerHeader(
            // TODO: Bagian drawer header
          ),
          // TODO: Bagian routing
        ],
      ),
    );
  }
}
```
Setelah itu, kita tambahkan impor di halaman yang mau dimasukan ke navigasi dalam drawer menu (disini kita memasukan ke MyHomePage dan ShopFormpage)

```
import 'package:flutter/material.dart';
import 'package:shopping_list/menu.dart';
// TODO: Impor halaman ShopFormPage jika sudah dibuat
```

Lalu kita tambahkan routing ke halaman yang kita impor ke bagiaan TODO: Bagian Routing:

```
...
ListTile(
  leading: const Icon(Icons.home_outlined),
  title: const Text('Halaman Utama'),
  // Bagian redirection ke MyHomePage
  onTap: () {
    Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => MyHomePage(),
        ));
  },
),
ListTile(
  leading: const Icon(Icons.add_shopping_cart),
  title: const Text('Tambah Produk'),
  // Bagian redirection ke ShopFormPage
  onTap: () {
    /*
    TODO: Buatlah routing ke ShopFormPage di sini,
    setelah halaman ShopFormPage sudah dibuat.
    */
  },
),
...
```
Lalu kita bisa mempercantik tampilan dari drawer kita dengan memasukan drawer header di TODO: Bagian drawer header:

```
...
const DrawerHeader(
  decoration: BoxDecoration(
    color: Colors.indigo,
  ),
  child: Column(
    children: [
      Text(
        'Shopping List',
        textAlign: TextAlign.center,
        style: TextStyle(
          fontSize: 30,
          fontWeight: FontWeight.bold,
          color: Colors.white,
        ),
      ),
      Padding(padding: EdgeInsets.all(10)),
      Text("Catat seluruh keperluan belanjamu di sini!",
          // TODO: Tambahkan gaya teks dengan center alignment, font ukuran 15, warna putih, dan weight biasa
          ),
    ],
  ),
),
...
```

Lalu, masukkan drawere ke halaman yang ingin di tambahkan drawer, di sini kita memasukannya ke menu.dart:

```
...
// Impor drawer widget
import 'package:shopping_list/widgets/left_drawer.dart';
...
return Scaffold(
  appBar: AppBar(
    title: const Text(
      'Shopping List',
    ),
    backgroundColor: Colors.indigo,
    foregroundColor: Colors.white,
  ),
  // Masukkan drawer sebagai parameter nilai drawer dari widget Scaffold
  drawer: const LeftDrawer(),
...)
```

Selanjutnya kita akan membuat berkas bari pada direktori lib dengan nama shoplist_form.dart dan tambahkan 

```
import 'package:flutter/material.dart';
// TODO: Impor drawer yang sudah dibuat sebelumnya

class ShopFormPage extends StatefulWidget {
    const ShopFormPage({super.key});

    @override
    State<ShopFormPage> createState() => _ShopFormPageState();
}

class _ShopFormPageState extends State<ShopFormPage> {
    @override
    Widget build(BuildContext context) {
        return Placeholder();
    }
}
```

Lalu ubah widget placeholder dengan potongan berikut :

```
Scaffold(
  appBar: AppBar(
    title: const Center(
      child: Text(
        'Form Tambah Produk',
      ),
    ),
    backgroundColor: Colors.indigo,
    foregroundColor: Colors.white,
  ),
  // TODO: Tambahkan drawer yang sudah dibuat di sini
  body: Form(
    child: SingleChildScrollView(),
  ),
);
```

Tambahkan variabel _formKey dan tambahkan ke dalam atribut key milik widget form:

```
...
class _ShopFormPageState extends State<ShopFormPage> {
    final _formKey = GlobalKey<FormState>();
...}
```

```
...
body: Form(
     key: _formKey,
     child: SingleChildScrollView(),
),
...
```

lalu isi widget form dengan field:

```
  ...
  class _ShopFormPageState extends State<ShopFormPage> {
    final _formKey = GlobalKey<FormState>();
    String _name = "";
    int _price = 0;
    String _description = "";
  ...}
```

buat juga widget column sebagai child dari SingleChildScrollView:

```
...
body: Form(
      key: _formKey,
      child: SingleChildScrollView(
        child: Column()
      ),
...)
```

Buat juga widget TextFormField yang dibungkus dengan padding sebagai salah satu children dari widget Column dan tambahkan atribut crossAxisAlignment:

```
...
child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextFormField(
            decoration: InputDecoration(
              hintText: "Nama Produk",
              labelText: "Nama Produk",
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
              ),
            ),
            onChanged: (String? value) {
              setState(() {
                _name = value!;
              });
            },
            validator: (String? value) {
              if (value == null || value.isEmpty) {
                return "Nama tidak boleh kosong!";
              }
              return null;
            },
          ),
        ),
...]
)

```

Buat juga dua TextFormField yang dibungkus dengan padding sebagai child berikutnya dari Column:

```
...
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Harga",
      labelText: "Harga",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    // TODO: Tambahkan variabel yang sesuai
    onChanged: (String? value) {
      setState(() {
        ... = int.parse(value!);
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Harga tidak boleh kosong!";
      }
      if (int.tryParse(value) == null) {
        return "Harga harus berupa angka!";
      }
      return null;
    },
  ),
),
Padding(
  padding: const EdgeInsets.all(8.0),
  child: TextFormField(
    decoration: InputDecoration(
      hintText: "Deskripsi",
      labelText: "Deskripsi",
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(5.0),
      ),
    ),
    onChanged: (String? value) {
      setState(() {
        // TODO: Tambahkan variabel yang sesuai
        ... = value!;
      });
    },
    validator: (String? value) {
      if (value == null || value.isEmpty) {
        return "Deskripsi tidak boleh kosong!";
      }
      return null;
    },
  ),
),
...
```

Lalu butlah tombol sebagai child selanjutnya dari column yang dibungkus juga ke dalam widget Padding dan align:

```
...
Align(
  alignment: Alignment.bottomCenter,
  child: Padding(
    padding: const EdgeInsets.all(8.0),
    child: ElevatedButton(
      style: ButtonStyle(
        backgroundColor:
            MaterialStateProperty.all(Colors.indigo),
      ),
      onPressed: () {
        if (_formKey.currentState!.validate()) {}
      },
      child: const Text(
        "Save",
        style: TextStyle(color: Colors.white),
      ),
    ),
  ),
),
...
```

Berikutnya kita akan memunculkan data, tambahkan showDialog() pada bagian onPressed() dan munculkan juga widget AlertDialog :

```
...
child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor:
                MaterialStateProperty.all(Colors.indigo),
          ),
          onPressed: () {
            if (_formKey.currentState!.validate()) {
              showDialog(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text('Produk berhasil tersimpan'),
                    content: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment:
                            CrossAxisAlignment.start,
                        children: [
                          Text('Nama: $_name'),
                          // TODO: Munculkan value-value lainnya
                        ],
                      ),
                    ),
                    actions: [
                      TextButton(
                        child: const Text('OK'),
                        onPressed: () {
                          Navigator.pop(context);
                        },
                      ),
                    ],
                  );
                },
              );
            _formKey.currentState!.reset();
            }
          },
          child: const Text(
            "Save",
            style: TextStyle(color: Colors.white),
          ),
        ),
...
```

Selanjutnya, pada widget ShopItem pada berkas menu.dart, tambahkan kode di bawah ini :

```
...
  // Area responsif terhadap sentuhan
  onTap: () {
    // Memunculkan SnackBar ketika diklik
    ScaffoldMessenger.of(context)
      ..hideCurrentSnackBar()
      ..showSnackBar(SnackBar(
          content: Text("Kamu telah menekan tombol ${item.name}!")));

    // Navigate ke route yang sesuai (tergantung jenis tombol)
    if (item.name == "Tambah Produk") {
      // TODO: Gunakan Navigator.push untuk melakukan navigasi ke MaterialPageRoute yang mencakup ShopFormPage.
    }

  },
...
```

Terakhir, tinggal melakukan refactoring file, shop_card.dart pada direktori widgets. Pindahkan isi widget ShopItem pada menu.darat ke berkas widgets/shop_card.dart, dan pastikan untuk mengimpor halaman shoplist_form.dart pada berkas shop_card.dart dan import halaman shop_card.dart pada berkas menu.dart. Pindahkan file Menu.dart dan shoplist_form.dart ke dalam folder screens.