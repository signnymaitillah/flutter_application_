import 'package:flutter/material.dart';

class Halamantiga extends StatelessWidget {
  const Halamantiga({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('HalamanKetiga')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          style: ElevatedButton.styleFrom(
            backgroundColor: const Color.fromARGB(255, 233, 148, 176),
            foregroundColor: Colors.white,
          ),
          child: Text('Kembali ke halaman sebelumnya'),
        ),
      ),
    );
  }
}
