import 'package:flutter/material.dart';

class HomePageTemp extends StatelessWidget {
  final List<int> options = [1, 2, 3, 4];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laboratory of Components'),
      ),
      body: ListView(
        children: _createItemsMap(),
      ),
    );
  }

  List<Widget> _createItems() {
    List<Widget> list = List<Widget>.empty(growable: true);
    for (var opt in options) {
      final tempWidget = ListTile(
        title: Text(opt.toString()),
      );
      list
        ..add(tempWidget)
        ..add(Divider());
    }
    return list;
  }

  List<Widget> _createItemsMap() {
    return options.map((opt) {
      return Column(
        children: [
          ListTile(
            leading: Icon(Icons.wallet),
            title: Text(opt.toString() + '!'),
            subtitle: Text('Hola'),
            trailing: Icon(Icons.keyboard_arrow_right),
            onTap: () {},
          ),
          Divider()
        ],
      );
    }).toList();
  }
}
