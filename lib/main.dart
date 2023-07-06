import 'package:festival/artistas/artista1.dart';
import 'package:festival/artistas/artista2.dart';
import 'package:festival/artistas/artista3.dart';
import 'package:festival/artistas/artista4.dart';
import 'package:festival/artistas/artista5.dart';
import 'package:festival/artistas/artista6.dart';
import 'package:festival/artistas/artista7.dart';
import 'package:festival/artistas/artista8.dart';
import 'package:festival/artistas/artista9.dart';
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
        '/artistas/artista2': (context) => Artista2Page(),
        '/artistas/artista3': (context) => Artista3Page(),
        '/artistas/artista4': (context) => Artista4Page(),
        '/artistas/artista5': (context) => Artista5Page(),
        '/artistas/artista6': (context) => Artista6Page(),
        '/artistas/artista7': (context) => Artista7Page(),
        '/artistas/artista8': (context) => Artista8Page(),
        '/artistas/artista9': (context) => Artista9Page(),




      },
    );
  }
}
