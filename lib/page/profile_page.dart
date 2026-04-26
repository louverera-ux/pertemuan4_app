import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔹 HEADER + FOTO PROFILE
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 180,
                  width: double.infinity,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/header.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),

                Positioned(
                  bottom: -50,
                  left: 20,
                  child: CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.white,
                    child: const CircleAvatar(
                      radius: 45,
                      backgroundImage:
                          AssetImage("assets/images/profile.jpg"),
                    ),
                  ),
                ),
              ],
            ),

            const SizedBox(height: 60),

            // 🔹 NAMA & JUDUL
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Andira Aulia Agusta",
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                "Flutter Developer",
                style: TextStyle(color: Colors.grey),
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 FOLLOWERS
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Text("25M Followers"),
                  SizedBox(width: 20),
                  Text("375 Following"),
                ],
              ),
            ),

            const SizedBox(height: 20),

            // 🔹 ABOUT
            buildSectionTitle("About"),
            buildSectionContent(
              "Mahasiswa Universitas Pamulang yang memiliki minat dalam pengembangan aplikasi mobile menggunakan Flutter dan UI Design.",
            ),

            // 🔹 INFORMATION
            buildSectionTitle("Information"),
            buildInfoRow(Icons.email, "louverera@gmail.com"),
            buildInfoRow(Icons.phone, "0812345678"),
            buildInfoRow(Icons.cake, "August 05, 2004"),
            buildInfoRow(Icons.school,
                "Computer Science at Pamulang University"),

            // 🔹 SKILLS & INTEREST
            buildSectionTitle("Skills & Interest"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 10,
                children: const [
                  Chip(label: Text("Flutter")),
                  Chip(label: Text("Dart")),
                  Chip(label: Text("UI Design")),
                  Chip(label: Text("Figma")),
                  Chip(label: Text("Mobile Dev")),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // 🔧 TITLE SECTION
  static Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 20, 16, 5),
      child: Text(
        title,
        style: const TextStyle(
          fontSize: 18,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  // 🔧 CONTENT TEXT
  static Widget buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(
        content,
        style: const TextStyle(fontSize: 14),
      ),
    );
  }

  // 🔧 ROW INFORMATION (ICON + TEXT)
  static Widget buildInfoRow(IconData icon, String text) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      child: Row(
        children: [
          Icon(icon, size: 18, color: Colors.blue),
          const SizedBox(width: 10),
          Expanded(child: Text(text)),
        ],
      ),
    );
  }
}