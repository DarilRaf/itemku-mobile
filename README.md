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
    
    `-Keempat, menambahkan widget untuk menampilkan tombol, mengambil referesnsi dari tutorial.`
    
    `-Kelima, mengubah warna tombol dari tiap-tiap button (bonus)`
