import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class PalcoJazzPage extends StatelessWidget {
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
                  'PALCO JAZZ',
                  style: TextStyle(
                    fontSize: 70,
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
                'O Palco Jazz fica localizado na Praça Deputado Milton Brandão, popular Praça do Recanto. O local contará com dezenas de atrações com o melhor do Jazz.',
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
                    'assets/recanto.png',
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
                            const url = 'https://goo.gl/maps/nGJn2tQnHxSRabNG7';
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