import 'package:flutter/material.dart';
import 'page/beranda_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Pertemuan 4',
      home: const BerandaPage(), // 🔥 INI PENTING
    );
  }
}