import 'package:flutter/material.dart';

class FormationScreen extends StatelessWidget {
  const FormationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return SingleChildScrollView(
      padding: const EdgeInsets.all(58),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          const Text("Home"),
          const Text("Home"),

          const SizedBox(height: 20),
          const Row(
            children: <Widget>[
              Icon(Icons.person),
              SizedBox(width: 10),
              Column(
                children: [
                  Text("Alexis Hadjian"),
                ],
              )
            ],
          ),

          const SizedBox(height: 20),
          // Image.network('https://img.att.ovh/flutter/logo.png'),
          Image.asset('unsplash_56uwXWf5Ihk.png'),

          const Row(
            children: [
              CircleAvatar(
                backgroundImage: AssetImage('assets/unsplash_ppowah2hWE8.png'),
                maxRadius: 50,
                backgroundColor: Colors.green,
              ),
              CircleAvatar(
                backgroundImage: AssetImage('assets/unsplash_ppowah2hWE8.png'),
                maxRadius: 50,
                backgroundColor: Colors.green,
              ),
            ],
          ),
        ],
      )
    );
  }
}

