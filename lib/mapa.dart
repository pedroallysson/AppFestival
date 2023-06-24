import 'package:flutter/material.dart';

class MapaPage extends StatefulWidget {
  @override
  _MapaPageState createState() => _MapaPageState();
}

class _MapaPageState extends State<MapaPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'MAPA',
              style: TextStyle(
                fontSize: 70,
                fontFamily: 'Squada One',
                fontWeight: FontWeight.bold,
                color: Color(0xF33C4998),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 16),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Confira os espaços que compõem o Festival de Inverno. Clique em uma das opções e saiba mais!',
              style: TextStyle(
                fontSize: 18,
                color: Colors.grey,
              ),
              textAlign: TextAlign.justify,
            ),
          ),
          SizedBox(height: 16),
          Expanded(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  mapaItem('Palco Opala'),
                  mapaItem('Palco O Gritador'),
                  mapaItem('Palco Jazz'),
                  mapaItem('Palco Mirante'),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.music_note, color: Color(0xF33C4998)),
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
            label: 'Turismo',
          ),
        ],
        selectedItemColor: Color(0xF33C4998),
        unselectedItemColor: Color(0xF33C4998),
        onTap: (int index) {
          setState(() {
            _selectedIndex = index;
          });

          if (index == 0) {
            Navigator.pushNamed(context, '/');
          } else if (index == 1) {
            Navigator.pushNamed(context, '/mapa');
          } else if (index == 2) {
            Navigator.pushNamed(context, '/votacao');
          } else if (index == 3) {
            Navigator.pushNamed(context, '/turismo');
          }
        },
      ),
    );
  }

  Widget mapaItem(String text) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16, vertical: 20),
      child: Container(
        height: 100,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(0xF33C4998), width: 2),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              fontSize: 40,
              fontFamily: 'Squada One',
              fontWeight: FontWeight.bold,
              color: Color(0xF33C4998),
            ),
          ),
        ),
      ),
    );
  }
}
