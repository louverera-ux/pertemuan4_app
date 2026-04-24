import 'package:flutter/material.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // 🔥 HEADER + FOTO PROFILE
            Stack(
  clipBehavior: Clip.none,
  children: [
    Container(
      height: 180,
      width: double.infinity,
      decoration: BoxDecoration(
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
        child: CircleAvatar(
          radius: 45,
          backgroundImage: AssetImage("assets/images/profile.jpg"),
        ),
      ),
    ),
  ],
),

            const SizedBox(height: 60),

            // 🔹 NAMA & HEADLINE
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
                "Mahasiswa Universitas Pamulang yang sedang belajar Flutter dan pengembangan aplikasi mobile."),

            // 🔹 EXPERIENCE
            buildSectionTitle("Experience"),
            buildSectionContent("Intern @ Barbie Corp"),

            // 🔹 EDUCATION
            buildSectionTitle("Education"),
            buildSectionContent("bachelor's degree in Computer Science, Universitas Pamulang"),

            // 🔹 SKILLS
            buildSectionTitle("Skills"),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Wrap(
                spacing: 10,
                children: const [
                  Chip(label: Text("Flutter")),
                  Chip(label: Text("Dart")),
                  Chip(label: Text("UI Design")),
                ],
              ),
            ),

            const SizedBox(height: 30),
          ],
        ),
      ),
    );
  }

  // 🔧 Widget helper biar rapi
  static Widget buildSectionTitle(String title) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 10, 16, 5),
      child: Text(
        title,
        style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
      ),
    );
  }

  static Widget buildSectionContent(String content) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Text(content),
    );
  }
}