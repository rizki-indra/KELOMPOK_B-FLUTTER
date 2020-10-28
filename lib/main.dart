import 'package:flutter/material.dart';
import 'home_screen.dart';
void main() {
  // fungsi dalam sebuah kode program
  runApp(
      MyApp()); // berisi satu buah argumen bertipe Wiget dan menjadikannya sebagai root dari widget tree (struktur wiget)
}

class MyApp extends StatelessWidget {
  // sebuah kelas yang di gabung dengan kelas stateles widget
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    // halaman properti pada flutter

    return MaterialApp(
      
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
      
    );
  }
}
