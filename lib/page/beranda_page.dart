import 'package:flutter/material.dart';
import 'profile_page.dart';

class BerandaPage extends StatelessWidget {
  const BerandaPage({super.key});

  void showSnackBar(BuildContext context, String message) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text(message)),
    );
  }

  void showConfirmDialog(
      BuildContext context, String message, String toastMsg) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Konfirmasi"),
          content: Text(message),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                showSnackBar(context, toastMsg);
              },
              child: const Text("Ya"),
            ),
            TextButton(
              onPressed: () {
                Navigator.pop(context);
                showSnackBar(context, toastMsg);
              },
              child: const Text("Tidak"),
            ),
          ],
        );
      },
    );
  }

  void showSimpleDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: const Text("Alert"),
          content: const Text("Ini alert dialog"),
          actions: [
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: const Text("Close"),
            )
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("PERTEMUAN 4"),
        centerTitle: true,
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                showConfirmDialog(
                  context,
                  "Apakah anda yakin untuk mensubmit data?",
                  "Berhasil menambahkan data!",
                );
              },
              child: const Text("Submit"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showConfirmDialog(
                  context,
                  "Apakah anda yakin untuk men-delete data?",
                  "Berhasil menghapus data!",
                );
              },
              child: const Text("Delete"),
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              onPressed: () {
                showSimpleDialog(context);
              },
              child: const Text("Show Dialog"),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: const Icon(Icons.person),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ProfilePage(),
            ),
          );
        },
      ),
    );
  }
}