import 'package:flutter/material.dart';

void main() {
  runApp(TwitterDesign());
}

class TwitterDesign extends StatelessWidget {
  const TwitterDesign({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text(
            'Twitter',
            style: TextStyle(
              color: const Color.fromARGB(
                  255, 0, 0, 0), // Mengatur warna teks menjadi putih
            ),
          ),
          backgroundColor: Color.fromARGB(255, 237, 237, 237),
          actions: [
            IconButton(
              onPressed: () {
                // Tambahkan fungsi untuk tombol back di sini
              },
              icon: Icon(Icons.arrow_back),
            ),
            IconButton(
              onPressed: () {
                // Tambahkan fungsi untuk tombol pencarian di sini
              },
              icon: Icon(Icons.search),
            ),
            IconButton(
              onPressed: () {
                // Tambahkan fungsi untuk tombol more di sini
              },
              icon: Icon(Icons.more_vert),
            ),
          ],
        ),
        body: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  constraints: BoxConstraints.expand(
                      height: 200), // Atur tinggi kontainer sampul
                  color: Colors.grey[300],
                  child: Image.asset(
                    'assets/twitterupn.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(top: 50, left: 16, right: 16),
                  color: Colors.white,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'UPN Veteran Jawa Timur',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Row(
                        children: [
                          Text(
                            '@upnvjt_official', // Tambahkan teks di bawah "Rani Chamsyah"
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey[600],
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'AKUN RESMI UPN "VETERAN" JAWA TIMUR Dikelola oleh Humas UPN "Veteran" Jawa Timur Kampus Bela Negara',
                        style: TextStyle(
                          fontSize: 15,
                        ),
                      ),
                      SizedBox(width: 5),
                      TextButton(
                        onPressed: () {
                          // Tambahkan fungsi untuk menangani ketika teks ditekan di sini
                        },
                        child: Text(
                          'Translate Bio', // Ubah sesuai kebutuhan Anda
                          style: TextStyle(
                            color: Colors.blue, // Ubah warna teks menjadi biru
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            Positioned(
              top: 140,
              left: 20,
              child: ClipOval(
                child: Container(
                  width: 100,
                  height: 100,
                  decoration: BoxDecoration(
                    color: Colors.white,
                  ),
                  child: Image.asset(
                    'assets/ppupn.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              top: 199.9, // Atur posisi tombol ke pojok kanan atas
              right: 16,
              child: ElevatedButton(
                onPressed: () {
                  // Tambahkan fungsi untuk tombol follow di sini
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    // Membuat tombol menjadi berbentuk kotak
                    borderRadius:
                        BorderRadius.circular(15), // Mengatur border radius
                  ),
                  padding: EdgeInsets.symmetric(
                      vertical: 10,
                      horizontal: 20), // Atur padding vertikal dan horizontal
                  backgroundColor: const Color.fromARGB(
                      255, 16, 16, 16), // Warna latar belakang tombol
                  foregroundColor: Colors.white, // Warna teks tombol
                  // Atur margin atas tombol
                  elevation: 2,
                  shadowColor: Colors.grey,
                ),
                child: Text(
                  'Follow',
                  style: TextStyle(
                    fontWeight:
                        FontWeight.bold, // Membuat teks "Follow" menjadi tebal
                  ),
                ),
              ),
            ),
            Positioned(
              top: 25,
              right: 20,
              child: IconButton(
                onPressed: () {
                  // Tambahkan fungsi untuk tombol pencarian di sini
                },
                icon: Icon(
                  Icons.search,
                  color: Colors.white,
                ),
              ),
            ),
            Positioned(
              top: 25,
              right: 70,
              child: IconButton(
                onPressed: () {
                  // Tambahkan fungsi untuk tombol more di sini
                },
                icon: Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
