import 'package:flutter/material.dart';

class CompetencesScreen extends StatelessWidget {
  const CompetencesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text(
            'Compétences web',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 300,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                ListImage('/skills/logos_html-5.png'),
                ListImage('/skills/logos_css-3.png'),
                ListImage('/skills/logos_javascript.png'),
                ListImage('/skills/logos_php.png'),
                ListImage('/skills/devicon_nextjs.png'),
                // Add more skill images as needed
              ],
            ),
          ),
          const SizedBox(height: 30),
          const Text(
            'Compétences mobile',
            style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
          ),
          const SizedBox(height: 15),
          SizedBox(
            height: 300,
            child: GridView.count(
              crossAxisCount: 3,
              children: [
                ListImage('/skills/logos_react.png'),
                // Add more skill images as needed
              ],
            ),
          ),
        ],
      ),
    );
  }

  Container ListImage(String imageName) {
    return Container(
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(3, 3),
          ),
        ],
      ),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(15),
        child: Image.asset(
          imageName,
          fit: BoxFit.contain,
          height: 50,
          width: 50,
        ),
      ),
    );
  }
}
