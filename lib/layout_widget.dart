import 'package:flutter/material.dart';

class LayoutWidget extends StatelessWidget {
  const LayoutWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Layout Widget',
          style: TextStyle(fontSize: 20, color: Colors.white),
        ),
      ),
      body: Column(
        children: [
          Image.asset('Images/ypc.png'),

          SizedBox(height: 20),

          Text(
            'SMK YPC TASIKMALAYA',
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.blueAccent,
            ),
          ),
          Text(
            'Kelas RPL 2',
            style: TextStyle(fontSize: 20, color: Colors.blueAccent),
          ),

          SizedBox(height: 20),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: const [
              Column(children: [Icon(Icons.call), Text('Call')]),
              Column(children: [Icon(Icons.map), Text('Route')]),
              Column(children: [Icon(Icons.share), Text('Share')]),
            ],
          ),
        ],
      ),
    );
  }
}
