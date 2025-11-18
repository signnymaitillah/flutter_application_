import 'package:flutter/material.dart';

class Latihanprofil extends StatelessWidget {
  const Latihanprofil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil Saya',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 68, 171),
      ),
      body: Column(
        children: [
          SizedBox(height: 10),
          Container(
            padding: const EdgeInsets.all(3),
            child: ClipOval(
              child: (Image.asset(
                'images/nanay.jpg',
                width: 150,
                height: 150,
                fit: BoxFit.cover,
              )),
            ),
          ),
          SizedBox(height: 20),

          Text(
            'Signy Maitillah Agustina',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: const Color.fromARGB(255, 223, 86, 182),
            ),
          ),
          Text(
            'Kelas XI RPL 2',
            style: TextStyle(
              fontSize: 16,
              color: const Color.fromARGB(255, 243, 99, 183),
            ),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.call),
                label: const Text('Call'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 250, 115, 189),
                  foregroundColor: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.route),
                label: const Text('Route'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 250, 115, 189),
                  foregroundColor: Colors.white,
                ),
              ),
              const SizedBox(width: 10),
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.share),
                label: const Text('Share'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 250, 115, 189),
                  foregroundColor: Colors.white,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
