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
    int _amount = 0;
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

Tugas 9 : Integrasi Layanan Web Django dengan Aplikasi Flutter

 1. Apakah bisa kita melakukan pengambilan data JSON tanpa membuat model terlebih dahulu? Jika iya, apakah hal tersebut lebih baik daripada membuat 
 model sebelum melakukan pengambilan data JSON?

 Kita bisa melakukan pengambilan data JSON tanpa membuat model terlebih dahulu menggunakan fungsi fetch atau axios di JavaScrip ataupun library seperti requests di Python. Beberapa keuntungan jika tidak menggunakan model :
 - Sederhana : Jika Anda hanya perlu mengambil beberapa nilai dari data JSON, mungkin tidak perlu membuat model. Ini bisa membuat kode Anda lebih sederhana dan lebih mudah dipahami.
 - Flexible : jika struktur data JSON dapat berubah secara dinamis, mungkin lebih mudah untuk bekerja tanpa model. Anda dapat mengakses data yang Anda butuhkan tanpa harus memperbarui model setiap kali struktur data berubah.
 
 2. Jelaskan fungsi dari CookieRequest dan jelaskan mengapa instance CookieRequest perlu untuk dibagikan ke semua komponen di aplikasi Flutter.
 
 3. Jelaskan mekanisme pengambilan data dari JSON hingga dapat ditampilkan pada Flutter.

 - Membuat Permintaan HTTP: Pertama, Anda perlu membuat permintaan HTTP ke server menggunakan library seperti http di Flutter. Anda dapat melakukan ini dengan membuat fungsi bertipe http request dan melakukan Uri.parse terhadap link yang mengandung JSON

 - Mendapatkan Respons: Setelah permintaan dikirim, server akan mengirimkan respons yang berisi data dalam format JSON.

 - Parsing JSON: Setelah mendapatkan respons, Anda perlu mengurai data JSON menjadi struktur data yang dapat digunakan oleh aplikasi Flutter Anda. Ini biasanya dilakukan dengan fungsi jsonDecode

 - Membuat Model: Untuk memudahkan pengolahan data, biasanya dibuat model yang merepresentasikan struktur data JSON. Model ini biasanya berupa kelas dalam Dart yang memiliki properti yang sesuai dengan kunci dalam data JSON. Kelas ini juga memiliki metode fromJson yang mengubah data JSON menjadi instance dari mode

 - Menampilkan Data: Setelah data diubah menjadi model, Anda dapat menampilkan data tersebut di widget Flutter. Misalnya, Anda dapat menggunakan ListView.builder untuk menampilkan daftar data yang diterima dari server.


 4. Jelaskan mekanisme autentikasi dari input data akun pada Flutter ke Django hingga selesainya proses autentikasi oleh Django dan tampilnya menu pada Flutter.

 - Input Data Akun: Pengguna memasukkan data akun (biasanya username dan password) melalui form di aplikasi Flutter

 - Kirim Permintaan Autentikasi: Aplikasi Flutter mengirimkan permintaan POST ke server Django dengan data akun pengguna. Permintaan ini biasanya dikirim ke endpoint khusus seperti /get-token/

 - Proses Autentikasi Django: Server Django menerima permintaan dan memeriksa data akun pengguna. Jika data akun valid, server akan menghasilkan token autentikasi dan mengirimkannya kembali ke aplikasi Flutter

 - Terima dan Simpan Token: Aplikasi Flutter menerima token dari server dan menyimpannya untuk digunakan dalam permintaan berikutnya. Token ini biasanya disimpan di local storage atau state management system di Flutter.
 
- Navigasi ke Menu: Setelah token diterima dan disimpan, aplikasi Flutter biasanya akan menavigasi pengguna ke halaman menu atau dashboard

- Permintaan Berikutnya: Untuk permintaan berikutnya ke server, aplikasi Flutter akan menyertakan token ini di header permintaan. Ini memungkinkan server Django untuk mengidentifikasi dan mengautentikasi pengguna untuk setiap permintaan

5. Sebutkan seluruh widget yang kamu pakai pada tugas ini dan jelaskan fungsinya masing-masing.

- AppBar : Widget yang menampilkan sebuah bar pada bagian atas dari layar, berfungsi untuk menampilkan judul dan hal-hal untuk navigasi
- ListView : Widget yang menyediakan daftar yang bisa di scroll naik turun
- ListTile: Sebuah baris dengan ikon dan tulisan yang digunakan dalam ListView
- Text: Menampilan tulisan (String)
- MaterialApp: Widget ini berfungsi untuk "membungkus" Wdiget-widget yang membentuk aplikasi dengan material design.
- Scaffold: Widget yang berfungsi untuk menyediakan kerangka dasar untuk penempatan material design.
- Container : Widget yang berfungsi untuk menyediakan kotak yang bisa digunakan untuk styling elemen lain.
- ShopCard : Widget yang berfungsi menampilkan informasi-informasi dalam bentuk kartu
- Drawer: Widget panel yang bisa memnunjukan menu dengan metode slide-out.
- DrawerHeader: Bagian atas dari drawer. Biasanya menampilkan informasi-informasi.
 
6. Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial).
Buatlah django-app bernama authentication pada project Django yang telah buat sebelumnya.
Tambahkan authentication ke INSTALLED_APPS pada main project settings.py aplikasi Django.
Jalankan perintah pip install django-cors-headers untuk menginstal library yang dibutuhkan.
Tambahkan corsheaders ke INSTALLED_APPS pada main project settings.py aplikasi Django dan tambahkan corsheaders.middleware.CorsMiddleware pada main project settings.py aplikasi Django kamu.
Tambahkan beberapa variabel berikut ini pada main project settings.py aplikasi Django kamu.
CORS_ALLOW_ALL_ORIGINS = True
CORS_ALLOW_CREDENTIALS = True
CSRF_COOKIE_SECURE = True
SESSION_COOKIE_SECURE = True
CSRF_COOKIE_SAMESITE = 'None'
SESSION_COOKIE_SAMESITE = 'None'
Buatlah sebuah metode view untuk login pada authentication/views.py.

from django.shortcuts import render
from django.contrib.auth import authenticate, login as auth_login
from django.http import JsonResponse
from django.views.decorators.csrf import csrf_exempt

@csrf_exempt
def login(request):
    username = request.POST['username']
    password = request.POST['password']
    user = authenticate(username=username, password=password)
    if user is not None:
        if user.is_active:
            auth_login(request, user)
            # Status login sukses.
            return JsonResponse({
                "username": user.username,
                "status": True,
                "message": "Login successful!"
                # Tambahkan data lainnya jika ingin mengirim data ke Flutter.
            }, status=200)
        else:
            return JsonResponse({
                "status": False,
                "message": "Login failed."
            }, status=401)

    else:
        return JsonResponse({
            "status": False,
            "message": "Login gagal, periksa kembali email atau kata sandi."
        }, status=401)
Buat file urls.py pada folder authentication dan tambahkan URL routing terhadap fungsi yang sudah dibuat dengan endpoint login/.

from django.urls import path
from authentication.views import login

app_name = 'authentication'

urlpatterns = [
    path('login/', login, name='login'),
]

Terakhir, tambahkan path('auth/', include('authentication.urls')), pada file music_albums_mobile/urls.py.

Integrasi Sistem Autentikasi pada Flutter
Pertama, instal package yang disediakan oleh tim asisten dosen dengan menjalankan perintah berikut di Terminal.

flutter pub add provider
flutter pub add pbp_django_auth
Modifikasi root widget untuk menyediakan CookieRequest library ke semua child widgets dengan menggunakan Provider. Ubahlah menjadi:

class MyApp extends StatelessWidget {
    const MyApp({Key? key}) : super(key: key);

    @override
    Widget build(BuildContext context) {
        return Provider(
            create: (_) {
                CookieRequest request = CookieRequest();
                return request;
            },
            child: MaterialApp(
                title: 'Flutter App',
                theme: ThemeData(
                    colorScheme: ColorScheme.fromSeed(seedColor: Colors.indigo),
                    useMaterial3: true,
                ),
                home: MyHomePage()),
            ),
        );
    }
}
Buatlah file baru pada folder screens dengan nama login.dart. lalu isi file dengan kode berikut.

import 'package:music_albums_mobile/screens/menu.dart';
import 'package:flutter/material.dart';
import 'package:pbp_django_auth/pbp_django_auth.dart';
import 'package:provider/provider.dart';

void main() {
    runApp(const LoginApp());
}

class LoginApp extends StatelessWidget {
const LoginApp({super.key});

@override
Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Login',
        theme: ThemeData(
            primarySwatch: Colors.blue,
    ),
    home: const LoginPage(),
    );
    }
}

class LoginPage extends StatefulWidget {
    const LoginPage({super.key});

    @override
    _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
    final TextEditingController _usernameController = TextEditingController();
    final TextEditingController _passwordController = TextEditingController();

    @override
    Widget build(BuildContext context) {
        final request = context.watch<CookieRequest>();
        return Scaffold(
            appBar: AppBar(
                title: const Text('Login'),
            ),
            body: Container(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                        TextField(
                            controller: _usernameController,
                            decoration: const InputDecoration(
                                labelText: 'Username',
                            ),
                        ),
                        const SizedBox(height: 12.0),
                        TextField(
                            controller: _passwordController,
                            decoration: const InputDecoration(
                                labelText: 'Password',
                            ),
                            obscureText: true,
                        ),
                        const SizedBox(height: 24.0),
                        ElevatedButton(
                            onPressed: () async {
                                String username = _usernameController.text;
                                String password = _passwordController.text;

                                // Cek kredensial
                                // TODO: Ganti URL dan jangan lupa tambahkan trailing slash (/) di akhir URL!
                                // Untuk menyambungkan Android emulator dengan Django pada localhost,
                                // gunakan URL http://10.0.2.2/
                                final response = await request.login("http://<APP_URL_KAMU>/auth/login/", {
                                'username': username,
                                'password': password,
                                });
                    
                                if (request.loggedIn) {
                                    String message = response['message'];
                                    String uname = response['username'];
                                    Navigator.pushReplacement(
                                        context,
                                        MaterialPageRoute(builder: (context) => MyHomePage()),
                                    );
                                    ScaffoldMessenger.of(context)
                                        ..hideCurrentSnackBar()
                                        ..showSnackBar(
                                            SnackBar(content: Text("$message Selamat datang, $uname.")));
                                    } else {
                                    showDialog(
                                        context: context,
                                        builder: (context) => AlertDialog(
                                            title: const Text('Login Gagal'),
                                            content:
                                                Text(response['message']),
                                            actions: [
                                                TextButton(
                                                    child: const Text('OK'),
                                                    onPressed: () {
                                                        Navigator.pop(context);
                                                    },
                                                ),
                                            ],
                                        ),
                                    );
                                }
                            },
                            child: const Text('Login'),
                        ),
                    ],
                ),
            ),
        );
    }
}
Pada file main.dart, pada Widget MaterialApp(...), ubah home: MyHomePage() menjadi home: LoginPage()

Pembuatan Model Kustom
Pertama, buka endpoint JSON yang sudah dibuat sebelumnya lalu salin data JSON dan buka situs web Quicktype
Pada situs web Quicktype, ubahlah setup name menjadi Product, source type menjadi JSON, dan language menjadi Dart
Tempel data JSON yang telah disalin sebelumnya ke dalam textbox yang tersedia pada Quicktype
Klik pilihan Copy Code pada Quicktype
Setelah mendapatkan kode model melalui Quicktype, buka kembali proyek Flutter, buatlah file baru pada folder lib/models dengan nama product.dart, dan tempel kode yang sudah disalin dari Quicktype
Penerapan Fetch Data dari Django Untuk Ditampilkan ke Flutter
Menambahkan Dependensi HTTP
Jalankan flutter pub add http pada terminal proyek Flutter untuk menambahkan package http.

Pada file android/app/src/main/AndroidManifest.xml, tambahkan kode berikut untuk memperbolehkan akses Internet pada aplikasi Flutter yang sedang dibuat.

...
    <application>
    ...
    </application>
    <!-- Required to fetch data from the Internet. -->
    <uses-permission android:name="android.permission.INTERNET" />
...
Melakukan Fetch Data dari Django
Buatlah file baru pada folder lib/screens dengan nama list_product.dart
Pada file list_product.dart, impor library yang dibutuhkan
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:music_albums_mobile/models/product.dart';
...

Salinlah potongan kode berikut pada screens/list_product.dart dan mengimpor file yang diperlukan.
...
import 'package:music_albums_mobile/widgets/left_drawer.dart';

class ProductPage extends StatefulWidget {
    const ProductPage({Key? key}) : super(key: key);

    @override
    _ProductPageState createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
Future<List<Product>> fetchProduct() async {
    var url = Uri.parse(
        'http://localhost:8000/json/');
    var response = await http.get(
        url,
        headers: {"Content-Type": "application/json"},
    );

    // melakukan decode response menjadi bentuk json
    var data = jsonDecode(utf8.decode(response.bodyBytes));

    // melakukan konversi data json menjadi object Product
    List<Product> list_product = [];
    for (var d in data) {
        if (d != null) {
            list_product.add(Product.fromJson(d));
        }
    }
    return list_product;
}

@override
Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('Product'),
        ),
        drawer: const LeftDrawer(),
        body: FutureBuilder(
            future: fetchProduct(),
            builder: (context, AsyncSnapshot snapshot) {
                if (snapshot.data == null) {
                    return const Center(child: CircularProgressIndicator());
                } else {
                    if (!snapshot.hasData) {
                    return const Column(
                        children: [
                        Text(
                            "Tidak ada data produk.",
                            style:
                                TextStyle(color: Color(0xff59A5D8), fontSize: 20),
                        ),
                        SizedBox(height: 8),
                        ],
                    );
                } else {
                    return ListView.builder(
                        itemCount: snapshot.data!.length,
                        itemBuilder: (_, index) => Container(
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 12),
                                padding: const EdgeInsets.all(20.0),
                                child: Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                    Text(
                                    "${snapshot.data![index].fields.name}",
                                    style: const TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,
                                    ),
                                    ),
                                    const SizedBox(height: 10),
                                    Text("${snapshot.data![index].fields.amount}"),
                                    const SizedBox(height: 10),
                                    Text(
                                        "${snapshot.data![index].fields.description}")
                                ],
                                ),
                            ));
                    }
                }
            }));
    }
}
Tambahkan halaman list_product.dart ke widgets/left_drawer.dart dengan menambahkan kode berikut.
// Kode ListTile Menu
...
ListTile(
    leading: const Icon(Icons.shopping_basket),
    title: const Text('Daftar Produk'),
    onTap: () {
        // Route menu ke halaman produk
        Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const ProductPage()),
        );
    },
),
...

Ubah fungsi tombol View Albums pada halaman utama agar mengarahkan ke halaman ProductPage. Lakukan redirection dengan menambahkan else if setelah kode if(...){...} di bagian akhir onTap: () { } yang ada pada file widgets/shop_card.dart
...
else if (item.name == "View Albums") {
        Navigator.push(context,
            MaterialPageRoute(builder: (context) => const ProductPage()));
      }
...

Impor file yang dibutuhkan saat menambahkan ProductPage ke left_drawer.dart dan shop_card.dart.
Jalankan aplikasi dan cobalah untuk menambahkan beberapa Product di situs web
Integrasi Form Flutter Dengan Layanan Django
Buatlah sebuah fungsi view baru pada main/views.py aplikasi Django dengan potongan kode berikut.

@csrf_exempt
def create_product_flutter(request):
    if request.method == 'POST':
        
        data = json.loads(request.body)

        new_product = Product.objects.create(
            user = request.user,
            name = data["name"],
            amount = int(data["amount"]),
            description = data["description"]
        )

        new_product.save()

        return JsonResponse({"status": "success"}, status=200)
    else:
        return JsonResponse({"status": "error"}, status=401)

Tambahkan path baru pada main/urls.py dengan kode berikut.

path('create-flutter/', create_product_flutter, name='create_product_flutter'),
Langkah-langkah berikut akan dilakukan pada kode proyek Flutter.
Hubungkan halaman shoplist_form.dart dengan CookieRequest dengan menambahkan kode berikut.

...
@override
Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();

    return Scaffold(
...

Ubahlah perintah pada onPressed: () button tambah menjadi kode berikut.

...
onPressed: () async {
    if (_formKey.currentState!.validate()) {
        // Kirim ke Django dan tunggu respons
        final response = await request.postJson(
        "http://localhost:8000/create-flutter/",
        jsonEncode(<String, String>{
            'name': _name,
            'amount': _amount.toString(),
            'description': _description,
        }));
        if (response['status'] == 'success') {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(
            content: Text("Produk baru berhasil disimpan!"),
            ));
            Navigator.pushReplacement(
                context,
                MaterialPageRoute(builder: (context) => MyHomePage()),
            );
        } else {
            ScaffoldMessenger.of(context)
                .showSnackBar(const SnackBar(
                content:
                    Text("Terdapat kesalahan, silakan coba lagi."),
            ));
        }
    }
},
...

Lakukan quick fix pada baris-baris yang bermasalah untuk mengimpor file yang dibutuhkan lalu jalankan ulang aplikasi dan coba untuk menambahkan transaksi baru dari aplikasi Flutter.

Implementasi Fitur Logout
Buatlah sebuah metode view untuk logout pada authentication/views.py.

from django.contrib.auth import logout as auth_logout
...
@csrf_exempt
def logout(request):
    username = request.user.username

    try:
        auth_logout(request)
        return JsonResponse({
            "username": username,
            "status": True,
            "message": "Logout berhasil!"
        }, status=200)
    except:
        return JsonResponse({
        "status": False,
        "message": "Logout gagal."
        }, status=401)

Tambahkan path baru pada authentication/urls.py dengan kode berikut.

path('logout/', logout, name='logout'),
Langkah-langkah berikut akan dilakukan pada kode proyek Flutter.
Buka file `lib/widgets/shop_card.dart`` dan tambahkan potongan kode berikut.

...
@override
Widget build(BuildContext context) {
    final request = context.watch<CookieRequest>();
    return Material(
...
Ubahlah perintah onTap: () {...} pada widget Inkwell menjadi onTap: () async {...} agar widget Inkwell dapat melakukan proses logout secara asinkronus.

Tambahkan kode berikut ke dalam async {...} di bagian akhir

...
// statement if sebelumnya
// tambahkan else if baru seperti di bawah ini
else if (item.name == "Logout") {
        final response = await request.logout(
            "http://localhost:8000/auth/logout/");
        String message = response["message"];
        if (response['status']) {
          String uname = response["username"];
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("$message Sampai jumpa, $uname."),
          ));
          Navigator.pushReplacement(
            context,
            MaterialPageRoute(builder: (context) => const LoginPage()),
          );
        } else {
          ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text("$message"),
          ));
        }
      }
...
Jalankan ulang aplikasi dan coba untuk lakukan logout.