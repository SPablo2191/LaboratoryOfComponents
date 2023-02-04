import 'package:flutter/material.dart';

class AvatarPage extends StatelessWidget {
  const AvatarPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Avatar'), actions: _getIconsBadges()),
      body: Center(
          child: FadeInImage(
        image: NetworkImage(
            'https://iso.500px.com/wp-content/uploads/2014/07/big-one.jpg'),
        placeholder: AssetImage('assets/jar.gif'),
      )),
    );
  }

  _getIconsBadges() {
    return [
      Container(
        margin: EdgeInsets.only(right: 10.0),
        child: CircleAvatar(
          child: Text('PS', style: TextStyle(color: Colors.white)),
          backgroundColor: Colors.amber,
        ),
      ),
      Container(
        margin: EdgeInsets.only(right: 10.0),
        child: Container(
          padding: EdgeInsets.all(2),
          child: CircleAvatar(
            radius: 20.0,
            backgroundImage: NetworkImage(
                'https://yt3.ggpht.com/yti/AHXOFjWSn0wb8fGd7_Y_KKbgOS98PP6uzkU2x7eDCEbmMw=s108-c-k-c0x00ffffff-no-rj'),
          ),
        ),
      )
    ];
  }
}
