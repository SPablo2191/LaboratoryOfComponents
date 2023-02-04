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
          _getCard2(),
          SizedBox(
            height: 30.0,
          ),
          SizedBox(
            height: 30.0,
          ),
          _getCard1(),
          SizedBox(
            height: 30.0,
          ),
          _getCard2(),
          SizedBox(
            height: 30.0,
          ),
          _getCard1(),
          SizedBox(
            height: 30.0,
          ),
          _getCard2(),
          SizedBox(
            height: 30.0,
          ),
          _getCard1(),
          SizedBox(
            height: 30.0,
          ),
          _getCard2(),
          SizedBox(
            height: 30.0,
          ),
          _getCard1(),
          SizedBox(
            height: 30.0,
          ),
          _getCard2(),
        ],
      ),
    );
  }

  Widget _getCard1() {
    return Card(
      elevation: 5.0,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
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
    final card = Container(
      // clipBehavior: Clip.antiAlias,
      child: Column(children: [
        FadeInImage(
          placeholder: AssetImage('assets/jar.gif'),
          image: NetworkImage(
              'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
          fadeInDuration: Duration(milliseconds: 200),
          height: 300,
          fit: BoxFit.cover,
        ),
        // Image(image: NetworkImage('')),
        Container(
            padding: EdgeInsets.all(10),
            child: Text('Esta es una imagen de prueba'))
      ]),
    );
    return Container(
      child: ClipRRect(child: card, borderRadius: BorderRadius.circular(30)),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(30.0),
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black26,
                blurRadius: 10.0,
                spreadRadius: 2.0,
                offset: Offset(2.0, 5.0))
          ]),
    );
  }
}
