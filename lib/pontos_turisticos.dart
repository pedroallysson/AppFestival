import 'package:flutter/material.dart';

class TurismoPage extends StatelessWidget {
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
                  'PONTOS TURÍSTICOS',
                  style: TextStyle(
                    fontSize: 47,
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
                'Conheça os pontos turísticos de Pedro II. Clique em uma das opções e saiba mais!',
                style: TextStyle(
                  fontSize: 18,
                  color: Colors.grey,
                ),
                textAlign: TextAlign.justify,
              ),
            ),
            SizedBox(height: 16),
            ListView(
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pontos/mirante');
                  },
                  child: TurismoCard(
                    fotoPath: 'assets/mirante.png',
                    legenda: 'Mirante do Gritador',
                    cor: Colors.lightGreenAccent,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pontos/salto_liso');
                  },
                  child: TurismoCard(
                    fotoPath: 'assets/salto.png',
                    legenda: 'Salto Liso',
                    cor: Colors.blue,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pontos/sitio_torre');
                  },
                  child: TurismoCard(
                    fotoPath: 'assets/sitio.png',
                    legenda: 'Sítio Arqueológico das Torres',
                    cor: Colors.orangeAccent,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pontos/urubu_rei');
                  },
                  child: TurismoCard(
                    fotoPath: 'assets/urubu.png',
                    legenda: 'Cachoeira do Urubu Rei',
                    cor: Colors.green,
                  ),
                ),
                GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/pontos/pedra_lua');
                  },
                  child: TurismoCard(
                    fotoPath: 'assets/pedra.png',
                    legenda: 'Mirante Pedra da Lua',
                    cor: Colors.yellow,
                  ),
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

class TurismoCard extends StatelessWidget {
  final String fotoPath;
  final String legenda;
  final Color cor;

  const TurismoCard({
    Key? key,
    required this.fotoPath,
    required this.legenda,
    required this.cor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
      decoration: BoxDecoration(
        color: cor,
        borderRadius: BorderRadius.circular(5),
        border: Border.all(color: Color(0xF33C4998), width: 2),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.asset(
            fotoPath,
            width: double.infinity,
            height: 200,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: EdgeInsets.all(16),
            child: Text(
              legenda,
              style: TextStyle(
                fontSize: 34,
                fontFamily: 'Squada One',
                fontWeight: FontWeight.bold,
                color: Color(0xF33C4998),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
