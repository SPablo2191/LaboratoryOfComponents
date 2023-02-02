import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Laboratory of Components'),
      ),
      body: _getList(),
    );
  }

  Widget _getList() {
    return ListView(
      children: _getItemsList(),
    );
  }

  List<Widget> _getItemsList() {
    return [
      ListTile(
        title: Text('Hola item'),
      ),
      ListTile(
        title: Text('Hola item'),
      ),
      ListTile(
        title: Text('Hola item'),
      ),
      ListTile(
        title: Text('Hola item'),
      ),
    ];
  }
}
