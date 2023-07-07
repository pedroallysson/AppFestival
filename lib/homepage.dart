import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;

  List<String> artistNames = [
    'Vanessa da Mata',
    'Duda Beat',
    'Frejat',
    'Chico César',
    'Alice Caymmi',
    'Flávio Venturini',
    'Anavitória',
    'Banda TopGun',
    'Lagum',
    // Nome dos Artistas
  ];

  List<String> artistImages = [
    'assets/vanessa.png',
    'assets/duda.png',
    'assets/frejat.png',
    'assets/chico.png',
    'assets/alice.png',
    'assets/flavio.png',
    'assets/ana.png',
    'assets/topgun.png',
    'assets/lagum.png',
    // Caminho das imagens
  ];

  List<String> artistPalco = [
    'Palco Opala',
    'Palco O Gritador',
    'Palco Opala',
    'Palco Opala',
    'Palco Opala',
    'Palco Opala',
    'Palco Opala',
    'Palco Opala',
    'Palco Opala',
    // Caminho das imagens
  ];

  List<Color> artistColors = [
    Colors.red,
    Colors.blue,
    Colors.green,
    Colors.orange,
    Colors.lightBlue,
    Colors.yellow,
    Colors.red,
    Colors.blueGrey,
    Colors.green,
    // Cores dos cards
  ];

  List<int> artistDates = [8, 9, 10, 11, 8, 11, 8, 9, 9];

  List<int> filteredArtists = [];

  @override
  void initState() {
    super.initState();
    filterArtists();
  }

  void filterArtists() {
    filteredArtists.clear();
    for (int i = 0; i < artistDates.length; i++) {
      if (_selectedIndex == 0 || artistDates[i] == _selectedIndex) {
        filteredArtists.add(i);
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          SizedBox(height: 70),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'ARTISTAS',
              style: TextStyle(
                fontSize: 70,
                fontFamily: 'Squada One',
                fontWeight: FontWeight.bold,
                color: Color(0xF33C4998),
              ),
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 15),
          Container(
            height: 40,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: [
                SizedBox(width: 16),
                categoryItem('Todos', 0),
                SizedBox(width: 16),
                categoryItem('Dia 08', 8),
                SizedBox(width: 16),
                categoryItem('Dia 09', 9),
                SizedBox(width: 16),
                categoryItem('Dia 10', 10),
                SizedBox(width: 16),
                categoryItem('Dia 11', 11),
                SizedBox(width: 16),
              ],
            ),
          ),
          SizedBox(height: 15),
          Expanded(
            child: GridView.count(
              crossAxisCount: 2,
              childAspectRatio: 0.87,
              padding: EdgeInsets.all(6),
              children: List.generate(filteredArtists.length, (index) {
                final int artistIndex = filteredArtists[index];
                return GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(
                      context,
                      '/artistas/artista${artistIndex + 1}',
                    );
                  },
                  child: Column(
                    children: [
                      Expanded(
                        child: Card(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(5),
                            side: BorderSide(
                              color: Color(0xF33C4998),
                              width: 2,
                            ),
                          ),
                          color: artistColors[artistIndex],
                          child: AspectRatio(
                            aspectRatio: 1,
                            child: Image.asset(
                              artistImages[artistIndex],
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        artistNames[artistIndex],
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          fontFamily: 'Squada One',
                          color: Color(0xF33C4998),
                        ),
                      ),
                      SizedBox(height: 1),
                      Text(
                        artistPalco[artistIndex],
                        style: TextStyle(
                          color: Color(0xFF7597D6),
                        ),
                      ),
                    ],
                  ),
                );
              }),
            ),
          ),
        ],
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
        currentIndex: _selectedIndex.clamp(0, 3),
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
            Navigator.pushNamed(context, '/pontos_turisticos');
          }
        },
      ),
    );
  }

  Widget categoryItem(String text, int categoryIndex) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _selectedIndex = categoryIndex;
          filterArtists();
        });
      },
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
        decoration: BoxDecoration(
          color: categoryIndex == _selectedIndex
              ? Color(0xF33C4998)
              : Colors.white,
          borderRadius: BorderRadius.circular(5),
          border: Border.all(color: Color(0xF33C4998), width: 2),
        ),
        child: Text(
          text,
          style: TextStyle(
            color: categoryIndex == _selectedIndex
                ? Colors.white
                : Color(0xF33C4998),
            fontFamily: 'Squada One',
            fontSize: 19,
          ),
        ),
      ),
    );
  }
}
