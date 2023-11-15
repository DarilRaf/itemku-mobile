=================Tugas 7=================
1. *Apa perbedaan utama antara stateless dan stateful widget dalam konteks pengembangan aplikasi Flutter?*

 `Perbedaan utama antara stateless dan stateful ialah stateless widget merupakan widget yang tidak
    akan berubah dan tidak memiliki lifecycle, sementara stateful widget memiliki sifat yang dinamis
    dan mutable, widget ini memiliki lifecycle yang biasanya digunakan untuk widget didalamnya yang
    bergantung pada suatu perubahaan state atau waktu`

2. *Sebutkan seluruh widget yang kamu gunakan untuk menyelesaikan tugas ini dan jelaskan fungsinya masing-masing.*

    `- Scaffold : Basic layout structure yang menyediakan app bar, body, dan floating action button`

    `- AppBar : Bar di atas aplikasi untuk menampilkan title, leading actions, dan lainnya`

    `- Text : Widget yang menampilkan suatu teks`

    `- GridView.count : Widget yang membuat grid layout untuk menampilkan item didalamnya`

    `- Material : Widget untuk menampilkan suatu widget lain/material, disini untuk menampilkan tombol/card`

    `- InkWell : Widget yang mengambil respon saat disentuh, disini untuk menghandle 'ShopCard'`

    `- Container : Widget yang digunakan untuk menyimpan widget lainnya didalamnya`

3. *Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step (bukan hanya sekadar mengikuti tutorial)*

    `-Pertama, membuat aplikasi "itemku" dengan "flutter create itemku`
    
    `-Kedua, membuat 'menu.dart' pada folder lib, kemudian memindahkan class MyHomePage dan _MyHomePageState dari 'main.dart'`
    
    `-Ketiga, mengubah sifat widget dari stateful menjadi stateless pada 'menu.dart'`

=================Tugas 8=================

1. *Jelaskan perbedaan antara Navigator.push() dan Navigator.pushReplacement(), disertai dengan contoh mengenai penggunaan kedua metode tersebut yang tepat!*

   Pada penggunaan navigator di flutter, cara kerjanya mirip seperti stack yang disusun dari page ke page. Jadi, kalau menggunakan navigator.push, halaman akan dipush
   ke atas stack, sehingga halaman tersebut yang ditampilkan, kemudian halaman sebelumnya akan terdorong ke bawah. Sementara itu, pada navigator.pushReplacement, halaman yg
   berada di paling atas stack akan di pop/dihilangkan kemudian diganti dengan halaman baru yang dipush.

2. *Jelaskan masing-masing layout widget pada Flutter dan konteks penggunaannya masing-masing!*

   - Container: Digunakan sebagai base layout di aplikasi, dapat didekorasi dengan 'BoxDecoration'
   - Row & Column: Digunakan saat ingin menampilkan beberapa widget lain di dalmanya pada child, bisa secara horizontal (Row) maupun vertikal (Column)
   - Stack: Digunakan pada saat ingin menampilkan widget yang bertumpuk satu sama lain
   - Padding: Mengatur jarak antara widget dengan border di sekitarnya
   - Wrap: Mirip seperti Row dan Column, tetapi saat tidak ada space akan otomatis melanjutkan ke baris dibawahnya
   - GridView: Layout grid yang bisa di-scroll
   - ListView: Scrollable column widget, dapat digunakan untuk menampilkan list hingga tak terhingga
   - SizedBox: Digunakan untuk membuat tampilan box dengan ukuran yang spesifik

3. *Sebutkan apa saja elemen input pada form yang kamu pakai pada tugas kali ini dan jelaskan mengapa kamu menggunakan elemen input tersebut!*

Disini digunakan TextFormField untuk mengambil input dari nama, jumlah, dan deskripsi produk.
TextFormField digunakan karena disini bisa dilakukan validasi input jika input tidak sesuai dengan yang diharapkan.

4. *Bagaimana penerapan clean architecture pada aplikasi Flutter?*

Clean Architecture adalah konsep desain perangkat lunak yang memisahkan elemen-elemen kode menjadi lapisan yang berbeda, dengan tujuan untuk membuat kode lebih terorganisir, mudah diuji, dan mudah dipelihara. Dalam konteks Flutter, clean architecture biasanya terdiri dari beberapa lapisan seperti berikut:

Presentation Layer: Lapisan ini berisi widget dan logic UI. Di sini, Dapat digunakan StatelessWidget atau StatefulWidget untuk membangun antarmuka pengguna. Logic yang berhubungan dengan UI, seperti pemilihan warna atau animasi, juga termasuk di sini.

Business Logic Layer (BLL) atau Domain Layer: Layer ini bertanggung jawab atas rules dan logika bisnis. Di sini, anda mungkin memiliki kelas-kelas untuk entitas bisnis Anda (seperti User, Product, dll.) dan logic yang berkaitan dengan mereka. BLL ini berfungsi sebagai jembatan antara Presentation Layer dan Data Layer.

Data Layer: Lapisan ini mengatur akses data, baik itu dari database lokal seperti SQLite atau dari layanan web melalui API. Ini termasuk kelas-kelas seperti Repository dan Data Source. Repositories bertanggung jawab untuk berkomunikasi dengan bagian eksternal seperti API atau database lokal.

5. *Jelaskan bagaimana cara kamu mengimplementasikan checklist di atas secara step-by-step! (bukan hanya sekadar mengikuti tutorial)*
   - Membuat file dart baru untuk tampilan form, kemudian mengisinya dengan widget statefull yang berisi widget-widget input untuk memasukkan data
   - Membuat file dart untuk drawer yang akan tampil di sebelah kiri layar, kemudian memasukkannya dengan navigator yang akan menavigasi ke halaman homepage dan tambahkan item
   - Mengkonfigurasi menu.dart agar tombol Tambahkan Item di homepage juga terhubung ke halaman form dengan menggunakan navigator
   - Merapihkan direktori dengan memisahkan antara folder screens/tampilan dengan widgets seperti drawer di folder yang berbeda
    
    `-Keempat, menambahkan widget untuk menampilkan tombol, mengambil referesnsi dari tutorial.`
    
    `-Kelima, mengubah warna tombol dari tiap-tiap button (bonus)`
