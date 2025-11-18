import 'package:flutter/material.dart';

class Objekwisata extends StatelessWidget {
  const Objekwisata({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Objek Wisata Situ Gede"), centerTitle: true),
      body: Column(
        children: [
          Image.asset(
            'images/objek.png',
            width: double.infinity,
            fit: BoxFit.cover,
          ),

          SizedBox(height: 16),

          Text(
            "Wisata Situ Gede",
            style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 16),
          Text("Tasikmalaya"),
          SizedBox(height: 16),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(children: [Icon(Icons.call), Text("CALL")]),
              Column(children: [Icon(Icons.near_me), Text("ROUTE")]),
              Column(children: [Icon(Icons.share), Text("SHARE")]),
            ],
          ),
          SizedBox(height: 16),
          Text("Lorem"),
        ],
      ),
    );
  }
}
