import 'package:flutter/material.dart';

class LayoutHorizontal extends StatelessWidget {
  const LayoutHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('ListView Horizontal')),
      body: SizedBox(
        height: 150,
        child: ListView(
          scrollDirection: Axis.horizontal,
          children: <Widget>[
            Container(width: 160, color: Colors.deepPurpleAccent),
            Container(width: 160, color: Colors.yellowAccent),
            Container(width: 160, color: Colors.greenAccent),
            Container(width: 160, color: Colors.deepOrangeAccent),
          ],
        ),
      ),
    );
  }
}
