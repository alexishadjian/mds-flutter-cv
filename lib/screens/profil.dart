import 'package:flutter/material.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      padding: const EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[

          const Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('3135715.png'),
              maxRadius: 150,
              backgroundColor: Colors.green,
            ),
          ),

          Padding(
            padding: const EdgeInsets.all(15),
            child: SizedBox( width: double.infinity, height: 400,
              child: ListView(
                children: const [
                  ListTile(
                    leading: Icon(Icons.mail_outline),
                    title: Text("contact@alexish.fr"),
                  ),
                  ListTile(
                    leading: Icon(Icons.phone_enabled_outlined),
                    title: Text("07 00 00 00 00"),
                  ),
                  ListTile(
                    leading: Icon(Icons.place_outlined),
                    title: Text("Essone 91"),
                  ),
                  ListTile(
                    leading: Icon(Icons.link),
                    title: Text("https://alexish.fr"),
                  ),
                  ListTile(
                    leading: Icon(Icons.person_2_outlined),
                    title: Text("En tant que développeur web, j'aime construire et développer de belles interfaces web intuitives et immersives. Actuellement alternant développeur web en troisième année sur Paris, j'ai déjà pu acquérir une certaine expérience au fil de mes derniers projets."),
                  ),
                ]
              )
            ),
          ),
        ],
      )
    );
  }
}

