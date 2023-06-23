import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('ARTISTAS'),
      ),
      body: Column(
        children: [
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'ARTISTAS',
              style: TextStyle(
                fontSize: 40,
                fontFamily: 'Squada One',
                fontWeight: FontWeight.bold,
                color: Color(0xFF372D8D),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 16),
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 16),
                categoryItem('Todos'),
                SizedBox(width: 16),
                categoryItem('Dia 08'),
                SizedBox(width: 16),
                categoryItem('Dia 09'),
                SizedBox(width: 16),
                categoryItem('Dia 10'),
                SizedBox(width: 16),
                categoryItem('Dia 11'),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Total de artistas (pode ajustar conforme necessário)
              itemBuilder: (context, index) {
                return Row(
                  children: [
                    Expanded(
                      child: artistCard(),
                    ),
                    SizedBox(width: 16),
                    Expanded(
                      child: artistCard(),
                    ),
                  ],
                );
              },
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note),
            label: 'Artistas',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.map),
            label: 'Mapa',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Votação',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.camera_alt),
            label: 'Pontos Turísticos',
          ),
        ],
      ),
    );
  }

  Widget categoryItem(String text) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xFF372D8D), width: 2),
      ),
      child: Text(
        text,
        style: TextStyle(color: Color(0xFF372D8D)),
      ),
    );
  }

  Widget artistCard() {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Column(
        children: [
          Container(
            width: 150,
            height: 150,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5),
              border: Border.all(color: Color(0xFF372D8D), width: 2),
              color: Colors.white,
            ),
            // Coloque a imagem do artista aqui
          ),
          SizedBox(height: 16),
          Text(
            'Vanessa da Mata',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          SizedBox(height: 8),
          Text('Palco Opala'),
        ],
      ),
    );
  }
}
