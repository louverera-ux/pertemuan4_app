import 'package:flutter/material.dart';

class ListPage extends StatelessWidget {
  const ListPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<String> data = [
      "Pertemuan 01",
      "Pertemuan 02",
      "Pertemuan 03",
      "Pertemuan 04",
      "Pertemuan 05",
      "Pertemuan 06",
      "Pertemuan 07",
      "Pertemuan 08",
    ];

    return Scaffold(
      appBar: AppBar(title: const Text("List Pertemuan")),
      body: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: const Icon(Icons.star),
            title: Text(data[index]),
          );
        },
      ),
    );
  }
}