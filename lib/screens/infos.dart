import 'package:flutter/material.dart';

class InfosScreen extends StatelessWidget {
  const InfosScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.all(15),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            // First Article
            Article(
              imagePath: 'gettyimages-847042730.jpg.webp',
              category: 'Séjour à l\'étranger',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.',
            ),
            SizedBox(height: 20),

            // Second Article
            Article(
              imagePath: 'gettyimages-847042730.jpg.webp',
              category: 'Sports pratiqués',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.',
            ),
            SizedBox(height: 20),

            // Third Article
            Article(
              imagePath: 'gettyimages-847042730.jpg.webp',
              category: 'Loisirs',
              description: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam.',
            ),
          ],
        ),
      ),
    );
  }
}

class Article extends StatelessWidget {
  final String imagePath;
  final String category;
  final String description;

  const Article({
    super.key,
    required this.imagePath,
    required this.category,
    required this.description,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            Image.asset(
              imagePath,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
            Positioned(
              bottom: 10,
              left: 10,
              child: Container(
                color: Colors.black.withOpacity(0.7),
                padding: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                child: Text(
                  category,
                  style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 10),
        Text(
          description,
          style: const TextStyle(fontSize: 16),
        ),
      ],
    );
  }
}
