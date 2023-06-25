import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PalcoMirantePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: AppBar(//
      //title: Text('Mapa'),//
      //),//
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  'PALCO MIRANTE',
                  style: TextStyle(
                    fontSize: 58,
                    fontFamily: 'Squada One',
                    fontWeight: FontWeight.bold,
                    color: Color(0xF33C4998),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'O Palco Mirante do Gritador, na Serra dos Matões, inicia na sexta-feira, com apresentações a partir das 16h. Sobem ao palco, com a paradisíaca vista do Morro do Gritador, os artistas musicais Leone Rodrigues, Monise Borges e Jam Lounge Session.',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Card(
                child: Container(
                  width: double.infinity,
                  child: Image.asset(
                    'assets/gritador.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 100,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(color: Color(0xF33C4998), width: 2),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            const url = 'https://goo.gl/maps/G8Jm5GGGz88vma296';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Não foi possível abrir o URL: $url';
                            }
                          },
                          icon: Icon(Icons.location_on,
                            color: Color(0xF33C4998), // Cor do ícone
                            size: 40, ),
                          label: Text(
                            'COMO CHEGAR?',
                            style: TextStyle(
                              fontSize: 40,
                              fontFamily: 'Squada One',
                              color: Color(0xF33C4998),
                            ),
                          ),
                          style: ElevatedButton.styleFrom(
                            primary: Colors.lightGreenAccent, // Cor do botão
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Artistas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Palcos',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Votação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Turismo',
          ),
        ],
        selectedItemColor: Color(0xF33C4998),
        unselectedItemColor: Color(0xF33C4998),
        onTap: (int index) {
          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/mapa');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/votacao');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/pontos_turisticos');
          }
        },
      ),
    );
  }
}

