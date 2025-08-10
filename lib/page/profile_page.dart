import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: ProfilePage(),
  ));
}

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFDF6E3),
      appBar: AppBar(
        backgroundColor: Color(0xFFE06F3E),
        title: Text('Perfil'),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            CircleAvatar(
              radius: 40,
              backgroundImage: NetworkImage(
                'https://wallpapers.com/images/hd/smiling-ryan-gosling-84f663s298bcczo8.jpg', 
              ),
            ),
            SizedBox(height: 8),
            Text(
              'USER NAME',
              style: TextStyle(
                color: Color(0xFFE06F3E),
                fontWeight: FontWeight.bold,
                fontSize: 18,
                letterSpacing: 2,
              ),
            ),
            Divider(
              color: Color(0xFFE06F3E),
              thickness: 2,
              indent: 80,
              endIndent: 80,
              height: 24,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ColInfo('REALIZOU', '36', 'REVISÕES'),
                ColInfo('PULOU', '15', 'REVISÕES'),
                ColInfo('MEMORIZOU', '6', 'TÓPICOS'),
              ],
            ),
            SizedBox(height: 24),
            Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'MEUS CURSOS',
                style: TextStyle(
                  color: Color(0xFFE06F3E),
                  fontWeight: FontWeight.bold,
                  fontSize: 16,
                ),
              ),
            ),
            SizedBox(height: 12),
            Row(
              children: [
                Expanded(
                  child: Container(
                    padding: EdgeInsets.all(12),
                    decoration: BoxDecoration(
                      color: Color(0xFFD6E5D6),
                      borderRadius: BorderRadius.circular(6),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Desenvolvimento Web',
                          style: TextStyle(
                            color: Color(0xFF4C7D4C),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(height: 8),
                        Text(
                          'Técnico em desenvolvimento Web no SENAC',
                          style: TextStyle(
                            color: Color(0xFF4C7D4C),
                            fontSize: 12,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 12),
                Container(
                  width: 80,
                  height: 80,
                  decoration: BoxDecoration(
                    color: Color(0xFFC7D6C7),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    Icons.add,
                    size: 40,
                    color: Color(0xFF4C7D4C),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

class ColInfo extends StatelessWidget {
  final String title;
  final String value;
  final String subtitle;

  const ColInfo(this.title, this.value, this.subtitle, {super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Color(0xFFE06F3E),
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          value,
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: Colors.black,
          ),
        ),
        Text(
          subtitle,
          style: TextStyle(
            color: Colors.grey[600],
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
