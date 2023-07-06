import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Artista3Page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: double.infinity,
              height: 240,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('assets/frejat.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  'Frejat',
                  style: TextStyle(
                    fontSize: 41,
                    fontFamily: 'Squada One',
                    fontWeight: FontWeight.bold,
                    color: Color(0xF33C4998),
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(Icons.map, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    'Palco Opala',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Squada One',
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: [
                  Icon(Icons.date_range, color: Colors.grey),
                  SizedBox(width: 8),
                  Text(
                    '08 de Junho',
                    style: TextStyle(
                      fontFamily: 'Squada One',
                      fontSize: 18,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Text(
                'Roberto Frejat é um cantor, compositor, produtor e guitarrista brasileiro, notório por ser o principal parceiro de Cazuza em composições da banda Barão Vermelho e também na carreira solo do amigo, além de compor com/para outros artistas do cenário musical brasileiro.',
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
              child: Padding(
                padding: EdgeInsets.only(bottom: 16),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 90,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          border: Border.all(
                            color: Color(0xF33C4998),
                            width: 2,
                          ),
                        ),
                        child: ElevatedButton.icon(
                          onPressed: () async {
                            const url = 'https://youtu.be/Y73opo2RAPE';
                            if (await canLaunch(url)) {
                              await launch(url);
                            } else {
                              throw 'Não foi possível abrir o URL: $url';
                            }
                          },
                          icon: Icon(
                            Icons.play_circle_filled,
                            color: Color(0xF33C4998), // Cor do ícone
                            size: 40,
                          ),
                          label: Text(
                            'Escutar',
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
