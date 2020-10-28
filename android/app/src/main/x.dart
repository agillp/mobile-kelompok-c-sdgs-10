import 'package:flutter/material.dart'; // mengimport widget material design flutter

void main() {
  // main menjalankan method runApp
  runApp(MyApp()); // method runApp menjalankan aplikasi dari class MyApp
}

class MyApp extends StatelessWidget {
  // class "MyApp" turunan dari "StatelessWidget" (widget induk)
  @override // pengoverride-an oleh class turunannya (build) dari StatelessWidget
  Widget build(BuildContext context) {
    // mengembalikan tampilan sebuah widget MyApp
    return MaterialApp(
      // memanggil widget materiap app
      debugShowCheckedModeBanner:
          false, // menghilangkan teks debug diatas pojok kanan atas Appbar
      home: Scaffold(
        // membuat/menambahkan widget Scaffold/struktur dasar material design
        appBar: AppBar(
          // membuat/menambahkan widget Appbar
          title: Text(
              "Mengurangi Ketimpangan - 10"), // menambahkan title pada widget AppBar
        ),
        body: Center(
            // memberikan efek rata tengah pada body
            child: Text(
          // memberikan teks widget
          "Anggota Kelompok \n 1. Septia Puji Lestari - 182410103019 \n 2. Agill Fajar Prismadika - 182410103016 \n 3. Muhammad Ilham A - 182410103079", // isi teks
          style: TextStyle(
              // memberikan gaya pada teks
              fontStyle: FontStyle.italic, // memberikan gaya teks : font style
              fontWeight:
                  FontWeight.bold), // memberikan gaya teks : font weight
        )),
      ),
    );
  }
}
