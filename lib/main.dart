import 'src/routes/routes.dart';
import 'package:flutter/material.dart';

import 'src/pages/alert_page.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Laboratory of components',
      // home: HomePage(),
      initialRoute: '/',
      routes: getRoutes(),
      onGenerateRoute: (settings) {
        // se dispara cuando no esta en rutas
        return MaterialPageRoute(builder: (context) => AlertPage());
      },
      debugShowCheckedModeBanner: false,
    );
  }
}
