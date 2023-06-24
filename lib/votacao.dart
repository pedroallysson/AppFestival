import 'package:flutter/material.dart';
import 'homepage.dart';

class VotacaoPage extends StatefulWidget {
  @override
  _VotacaoPageState createState() => _VotacaoPageState();
}

class _VotacaoPageState extends State<VotacaoPage> {
  int _selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Votação'),
      ),
      body: ListView.builder(
        itemCount: artistNames.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(Icons.favorite),
            title: Text(artistNames[index]),
            trailing: Text('${artistVotes[index]}%'),
          );
        },
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
        currentIndex: 2, // Índice do item selecionado
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
}
