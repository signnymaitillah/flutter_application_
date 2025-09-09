import 'package:flutter/material.dart';

void main() {
  runApp(Latihan());
}

  class Latihan extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List dan GridView',
      home: Scaffold(
        appBar: AppBar(title: Text('List dan GridView')),
        body: ListView(
          padding: EdgeInsets.all(16),
          children: [
            Text(
              'Menu Aplikasi:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            ListTile(leading: Icon(Icons.map), title: Text('Map')),
            ListTile(leading: Icon(Icons.album), title: Text('Album')),
            ListTile(leading: Icon(Icons.phone), title: Text('Phone')),
            SizedBox(height: 16),
            Text(
              'Warna Horizontal:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Container(width: 160, color: Colors.deepPurpleAccent),
                Container(width: 160, color: Colors.yellowAccent),
                Container(width: 160, color: Colors.greenAccent),
                Container(width: 160, color: Colors.deepOrangeAccent),
              ],
            ),
            SizedBox(height: 16),
            Text(
              'Grid Item:',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            GridView.builder(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return Card(
                  margin: EdgeInsets.all(8),
                  child: Center(child: Text('Item $index')),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
