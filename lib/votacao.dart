import 'package:flutter/material.dart';

class VotacaoPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: 70),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  'VOTAÇÃO',
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
                'Vote na sua banda favorita. A mais votada estará presente na próxima edição do Festival de Inverno de Pedro II!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 16),
            Column(
              children: [
                ArtistaCard(
                  nome: 'Vanessa da Mata',
                  votos: 65,
                ),
                ArtistaCard(
                  nome: 'Duda Beat',
                  votos: 45,
                ),
                ArtistaCard(
                  nome: 'Frejat',
                  votos: 32,
                ),
                ArtistaCard(
                  nome: 'Lagum',
                  votos: 27,
                ),
                ArtistaCard(
                  nome: 'Chico César',
                  votos: 21,
                ),
                ArtistaCard(
                  nome: 'Anavitória',
                  votos: 18,
                ),
              ],
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

class ArtistaCard extends StatelessWidget {
  final String nome;
  final int votos;

  const ArtistaCard({
    Key? key,
    required this.nome,
    required this.votos,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      child: Card(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Row(
            children: [
              Expanded(
                child: Text(
                  nome,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              IconButton(
                onPressed: () {
                  // Lógica para votar no artista
                },
                icon: Icon(Icons.favorite_border),
                color: Colors.grey,
              ),
              SizedBox(width: 8),
              Text(
                '$votos%',
                style: TextStyle(
                  fontSize: 16,
                  color: Colors.grey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
