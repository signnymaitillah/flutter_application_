import 'package:flutter/material.dart';

class Profilsignay extends StatelessWidget {
  const Profilsignay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Profil Saya")),
      body: Column(
        children: [
          Center(
            child: CircleAvatar(
              radius: 50,
              backgroundImage: AssetImage('images/'),
            ),
          ),
          SizedBox(height: 16),
        ],
      ),
    );
  }
}
