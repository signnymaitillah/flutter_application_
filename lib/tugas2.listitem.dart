import 'package:flutter/material.dart';

void main() => runApp(MyApp());

abstract class TugasListItem {}

class HeadingItem implements TugasListItem {
  final String heading;
  HeadingItem(this.heading);
}

class MessageItem implements TugasListItem {
  final String sender;
  final String body;
  MessageItem(this.sender, this.body);
}

class ImageItem implements TugasListItem {
  final String imagePath;
  final String title;
  ImageItem(this.imagePath, this.title);
}

class MyApp extends StatelessWidget {
  final List<TugasListItem> items = List.generate(30, (index) {
    if (index % 5 == 0) {
      return HeadingItem('Heading $index');
    } else if (index % 7 == 3) {
      // Menyisipkan 3 gambar secara selang-seling
      int imageIndex = (index % 3) + 1;
      return ImageItem('images/image$imageIndex.png', 'Image Item $index');
    } else {
      return MessageItem('Sender $index', 'Message body $index');
    }
  });

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'List dengan Berbagai Item',
      home: Scaffold(
        appBar: AppBar(title: const Text('List dengan Berbagai Item')),
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            final item = items[index];

            if (item is HeadingItem) {
              return Padding(
                padding: const EdgeInsets.all(10.0),
                child: Text(
                  item.heading,
                  style: const TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                  ),
                ),
              );
            } else if (item is MessageItem) {
              return ListTile(
                leading: const Icon(Icons.message),
                title: Text(item.sender),
                subtitle: Text(item.body),
              );
            } else if (item is ImageItem) {
              return Card(
                margin: const EdgeInsets.symmetric(horizontal: 8, vertical: 6),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(item.imagePath),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        item.title,
                        style: const TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ],
                ),
              );
            } else {
              return const SizedBox();
            }
          },
        ),
      ),
    );
  }
}
