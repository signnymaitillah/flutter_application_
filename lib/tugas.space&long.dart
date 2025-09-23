import 'package:flutter/material.dart';

class TugasSpacelong extends StatelessWidget {
  const TugasSpacelong({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholsder();
  }

  @override
  Widget build(BuildContext context) {
    const int itemsCount = 4;

    return Scaffold(
      appBar: AppBar(title: const Text('Space List')),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(minHeight: constraints.maxHeight),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: List.generate(
                  itemsCount,
                  (index) => Card(
                    margin: const EdgeInsets.all(8),
                    color: Colors.blue[100 * (index + 2)],
                    child: SizedBox(
                      height: 100,
                      child: Center(
                        child: Text(
                          'Item $index',
                          style: const TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

@override
Widget build(BuildContext context) {
  final List<String> items = List<String>.generate(1000, (i) => 'Item $i');

  return Scaffold(
    appBar: AppBar(title: const Text('Long list')),
    body: ListView.builder(
      itemCount: items.length,
      prototypeItem: ListTile(title: Text(items.first)),
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.list_alt),
          title: Text(
            items[index],
            style: TextStyle(
              color: index % 10 == 0 ? Colors.blue : Colors.black,
            ),
          ),
        );
      },
    ),
  );
}
