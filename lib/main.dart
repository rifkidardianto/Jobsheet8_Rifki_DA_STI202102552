import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          title: const Text(
            'ROW, COLUMN DAN WRAP' '\n(FLUTTER LAYOUT)',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.white, // Mengganti warna teks menjadi putih
            ),
          ),
        ),
        body: SafeArea(
          child: Wrap(
            children: [
              buatKotak(
                  Colors.greenAccent, 100, 'assets/images/rifki.jpg', 'Rifki'),
              buatKotak(Colors.orangeAccent.shade400, 70,
                  'assets/images/faqih.jpg', 'Faqih'),
              buatKotak(
                  Colors.greenAccent, 50, 'assets/images/gigih.jpg', 'Gigih'),
              buatKotak(Colors.orangeAccent.shade400, 90,
                  'assets/images/hendri.jpg', 'Hendri'),
              buatKotak(
                  Colors.red.shade300, 110, 'assets/images/yasid.jpg', 'Yasid'),
              buatKotak(
                  Colors.blue.shade300, 40, 'assets/images/rifki.jpg', 'Rifki'),
            ],
          ),
        ),
      ),
    );
  }
}

Widget buatKotak(Color warna, double ukuran, String imagePath, String text) {
  return Container(
    decoration: BoxDecoration(
      color: warna,
      borderRadius: BorderRadius.circular(15), // Tambahkan BorderRadius
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.2), // Warna bayangan
          spreadRadius: 2, // Menyebarkan radius bayangan
          blurRadius: 5, // Mengaburkan radius bayangan
          offset: const Offset(10, 10), // Posisi bayangan
        ),
      ],
    ),
    height: ukuran,
    width: ukuran,
    margin: const EdgeInsets.all(10),
    child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ClipRRect(
          borderRadius:
              BorderRadius.circular(25), // Tambahkan BorderRadius ke gambar
          child: Image.asset(
            imagePath,
            height: ukuran / 2, // Sesuaikan ukuran gambar
            width: ukuran / 2,
            fit: BoxFit.cover, // Mengatur agar gambar sesuai dengan ukuran
          ),
        ),
        Text(
          text,
          style: TextStyle(
            fontSize: ukuran / 5, // Sesuaikan ukuran teks
            color: Colors.black, // Warna teks
          ),
        ),
      ],
    ),
  );
}
