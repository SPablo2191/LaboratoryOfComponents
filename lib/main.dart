import 'package:flutter/material.dart';

import 'src/pages/alert_page.dart';
import 'src/pages/home_page.dart';
import 'src/pages/avatar_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratory of components',
      // home: HomePage(),
      initialRoute: '/',
      routes: <String, WidgetBuilder>{
        '/': (BuildContext context) => HomePage(),
        'alert': (BuildContext context) => AlertPage(),
        'avatar': (BuildContext context) => AvatarPage()
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
