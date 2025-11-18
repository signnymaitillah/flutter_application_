import 'package:flutter/material.dart';
import 'package:flutter_application_3/HalamanDua.dart';
import 'package:flutter_application_3/HalamanTiga.dart';

class LatihanNavigator extends StatelessWidget {
  const LatihanNavigator({super.key});

  @override
  Widget build(BuildContext context) {
    final String nama = 'Signy Maitillah Agustina';
    final String alamat = 'Jl. Indihiang No.890';
    return Scaffold(
      appBar: AppBar(title: Text('Halaman 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        HalamanDua(nama: nama, alamat: alamat),
                  ),
                );
              },
              child: Text('Pergi ke halaman kedua'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Halamantiga()),
                );
              },
              child: Text('Pergi ke halaman ketigaa'),
            ),
          ],
        ),
      ),
    );
  }
}
