import 'package:flutter/material.dart';
import 'homepage.dart';
import 'mapa.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'App de Eventos',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => HomePage(),
        '/mapa': (context) => MapaPage(),
      },
    );
  }
}
