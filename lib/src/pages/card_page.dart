import 'package:flutter/material.dart';

class CardPage extends StatelessWidget {
  const CardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cards'),
      ),
      body: ListView(
        padding: EdgeInsets.all(10.0),
        children: [
          _getCard1(),
          SizedBox(
            height: 30.0,
          ),
          _getCard2()
        ],
      ),
    );
  }

  Widget _getCard1() {
    return Card(
      child: Column(
        children: [
          ListTile(
            leading: Icon(
              Icons.photo_album,
              color: Colors.blue,
            ),
            title: Text('Card 1'),
            subtitle: Text('Soy la primera Tarjeta creada con Flutter yupi'),
            trailing: Icon(Icons.keyboard_arrow_right),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(onPressed: () {}, child: Text('Cancelar')),
              TextButton(onPressed: () {}, child: Text('Elegir')),
            ],
          )
        ],
      ),
    );
  }

  _getCard2() {
    return Card(
      child: Column(children: [
        // FadeInImage(),
        // Image(image: NetworkImage('')),
        Container(
            padding: EdgeInsets.all(10),
            child: Text('Esta es una imagen de prueba'))
      ]),
    );
  }
}
