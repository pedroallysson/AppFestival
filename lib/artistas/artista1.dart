import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';


class Artista1Page extends StatelessWidget {
  Future<void> _openVideoPopup(BuildContext context) async {
    final String videoUrl = 'https://www.youtube.com/watch?v=v4k6JgC7UVA';

    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return Dialog(
          child: Container(
            width: double.infinity,
            height: 300,
            child: YoutubePlayer(
              controller: YoutubePlayerController(
                initialVideoId: YoutubePlayer.convertUrlToId(videoUrl)!,
                flags: YoutubePlayerFlags(
                  autoPlay: true,
                  mute: false,
                ),
              ),
              showVideoProgressIndicator: true,
              progressIndicatorColor: Colors.amber,
              progressColors: ProgressBarColors(
                playedColor: Colors.amber,
                handleColor: Colors.amberAccent,
              ),
            ),
          ),
        );
      },
    );
  }

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
                  image: AssetImage('assets/vanessa.png'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: 16),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Center(
                child: Text(
                  'Vanessa da Mata',
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
                'Com mais de 20 anos de carreira, Vanessa da Mata é um nome que se destaca no cenário da música popular brasileira. Nascida em Alto Garças, no Mato Grosso, em 10 de fevereiro de 1976, a cantora e compositora é hoje um dos maiores fenômenos musicais do país, além de ser conhecida mundialmente.',
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
              child: SizedBox(
                width: double.infinity,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 16),
                  child: ElevatedButton.icon(
                    onPressed: () => _openVideoPopup(context),
                    icon: Icon(
                      Icons.play_circle_filled,
                      color: Color(0xF33C4998), // Cor do ícone
                      size: 40,
                    ),
                    label: Text(
                      'Escutar',
                      style: TextStyle(
                        fontSize:60,
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
