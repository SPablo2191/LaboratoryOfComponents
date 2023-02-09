import 'package:flutter/material.dart';

class ListViewPage extends StatefulWidget {
  const ListViewPage({super.key});

  @override
  State<ListViewPage> createState() => _ListViewPageState();
}

class _ListViewPageState extends State<ListViewPage> {
  List<int> numbers = [1, 2, 3, 4, 5];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Listas'),
      ),
      body: _createListView(),
    );
  }

  _createListView() {
    return ListView.builder(
        itemCount: numbers.length,
        itemBuilder: (context, index) {
          final image = numbers[index];
          return FadeInImage(
              placeholder: AssetImage('assets/jar.gif'),
              image:
                  NetworkImage('https://picsum.photos/500/300/?image=$image'));
        }); // como se va a dibujar este componente
  }
}
