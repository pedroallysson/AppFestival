import 'package:festival/artistas/artista1.dart';
import 'package:festival/palcos/palco_gritador.dart';
import 'package:festival/palcos/palco_jazz.dart';
import 'package:festival/palcos/palco_mirante.dart';
import 'package:festival/palcos/palco_opala.dart';
import 'package:festival/pontos/mirante.dart';
import 'package:festival/pontos/pedra_lua.dart';
import 'package:festival/pontos/salto_liso.dart';
import 'package:festival/pontos/sitio_buritizim.dart';
import 'package:festival/pontos/sitio_torre.dart';
import 'package:festival/pontos/urubu_rei.dart';
import 'package:festival/pontos_turisticos.dart';
import 'package:festival/votacao.dart';
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
        '/votacao': (context) => VotacaoPage(),
        '/pontos_turisticos': (context) => TurismoPage(),
        '/palcos/palco_opala': (context) => PalcoOpalaPage(),
        '/palcos/palco_gritador': (context) => PalcoGritadorPage(),
        '/palcos/palco_jazz': (context) => PalcoJazzPage(),
        '/palcos/palco_mirante': (context) => PalcoMirantePage(),
        '/pontos/mirante': (context) => MirantePage(),
        '/pontos/salto_liso': (context) => SaltoLisoPage(),
        '/pontos/sitio_torre': (context) => SitioTorrePage(),
        '/pontos/sitio_buritizim': (context) => SitioBuritizimPage(),
        '/pontos/urubu_rei': (context) => UrubuReiPage(),
        '/pontos/pedra_lua': (context) => PedraLuaPage(),
        '/artistas/artista1': (context) => Artista1Page(),



      },
    );
  }
}
