import 'package:flutter/material.dart';
import 'list_page.dart';
import 'checkbox_page.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  Widget buildCard(
    BuildContext context,
    String title,
    Color color,
    IconData icon,
    VoidCallback onTap,
  ) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(0.9),
              color.withOpacity(0.6),
            ],
          ),
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: color.withOpacity(0.3),
              blurRadius: 6,
              offset: const Offset(2, 4),
            ),
          ],
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon, size: 28, color: Colors.white),
            const SizedBox(height: 6),
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                color: Colors.white,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 241, 246, 253),
      appBar: AppBar(
        title: const Text("DASHBOARD"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 251, 161, 239),
      ),
      body: Padding(
        padding: const EdgeInsets.all(14),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
          childAspectRatio: 1.2, // 🔥 bikin lebih kecil & padat
          children: [
            buildCard(context, "PERTEMUAN 04˙⋆✮", const Color.fromARGB(255, 74, 6, 53), Icons.menu_book, () {}),
            buildCard(context, "PERTEMUAN 05˙⋆✮", const Color.fromARGB(255, 117, 27, 57), Icons.list, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const ListPage()),
              );
            }),
            buildCard(context, "PERTEMUAN 06˙⋆✮", const Color.fromARGB(255, 219, 99, 165), Icons.check_box, () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const CheckboxPage()),
              );
            }),
            buildCard(context, "PERTEMUAN 07˙⋆✮", const Color.fromARGB(255, 250, 155, 217), Icons.code, () {}),
            buildCard(context, "PERTEMUAN 08˙⋆✮", const Color.fromARGB(255, 210, 162, 203), Icons.star, () {}),
          ],
        ),
      ),
    );
  }
}