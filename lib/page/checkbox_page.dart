import 'package:flutter/material.dart';

class CheckboxPage extends StatefulWidget {
  const CheckboxPage({super.key});

  @override
  State<CheckboxPage> createState() => _CheckboxPageState();
}

class _CheckboxPageState extends State<CheckboxPage> {
  final TextEditingController nama = TextEditingController();
  final TextEditingController nim = TextEditingController();
  final TextEditingController kelas = TextEditingController();

  // Hobi (ditambahin banyak)
  bool membaca = false;
  bool olahraga = false;
  bool gaming = false;
  bool musik = false;
  bool traveling = false;
  bool memasak = false;

  void submit() {
    showDialog(
      context: context,
      builder: (_) => AlertDialog(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12)),
        title: const Text( "˗ˏˋBERHASILˎˊ˗"),
        content: const Text("Kamu berhasil mendaftar!"),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text("OK"),
          )
        ],
      ),
    );
  }

  Widget inputField(
      String hint, TextEditingController controller, IconData icon) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: TextField(
        controller: controller,
        style: const TextStyle(fontSize: 13),
        decoration: InputDecoration(
          prefixIcon: Icon(icon, size: 18, color: const Color.fromARGB(255, 238, 3, 191)),
          hintText: hint,
          hintStyle: const TextStyle(fontSize: 12),
          filled: true,
          fillColor: Colors.white,
          contentPadding: const EdgeInsets.symmetric(vertical: 10),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }

  Widget checkboxItem(
      String title, bool value, Function(bool?) onChanged) {
    return CheckboxListTile(
      dense: true,
      contentPadding: EdgeInsets.zero,
      title: Text(title, style: const TextStyle(fontSize: 13)),
      value: value,
      activeColor: const Color.fromARGB(255, 244, 133, 240),
      onChanged: onChanged,
    );
  }

  // 🔥 BOX STYLE BIAR RAPI
  Widget boxContainer(String title, Widget child) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 14),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(14),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 6,
            offset: const Offset(2, 3),
          )
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 14,
              color: const Color.fromARGB(255, 117, 27, 57),
            ),
          ),
          const SizedBox(height: 10),
          child,
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3F4F9),
      appBar: AppBar(
        title: const Text("LOGIN ツ"),
        backgroundColor: const Color.fromARGB(255, 248, 193, 250),
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(14),
        child: Column(
          children: [
            // 🔹 BOX DATA DIRI
            boxContainer(
              "Data Diri",
              Column(
                children: [
                  inputField("Nama", nama, Icons.person),
                  inputField("NIM", nim, Icons.badge),
                  inputField("Kelas", kelas, Icons.class_),
                ],
              ),
            ),

            // 🔹 BOX HOBI
            boxContainer(
              "Hobi",
              Column(
                children: [
                  checkboxItem("Membaca", membaca,
                      (v) => setState(() => membaca = v!)),
                  checkboxItem("Olahraga", olahraga,
                      (v) => setState(() => olahraga = v!)),
                  checkboxItem("Gaming", gaming,
                      (v) => setState(() => gaming = v!)),
                  checkboxItem("Musik", musik,
                      (v) => setState(() => musik = v!)),
                  checkboxItem("Traveling", traveling,
                      (v) => setState(() => traveling = v!)),
                  checkboxItem("Memasak", memasak,
                      (v) => setState(() => memasak = v!)),
                ],
              ),
            ),

            // 🔹 BUTTON
            SizedBox(
              width: double.infinity,
              height: 45,
              child: ElevatedButton(
                onPressed: submit,
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 252, 217, 252),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
                child: const Text("Daftar"),
              ),
            ),
          ],
        ),
      ),
    );
  }
}