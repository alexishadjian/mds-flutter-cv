import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

class ProfilScreen extends StatelessWidget {
  const ProfilScreen({super.key});

  void _launchURL(String url) async {
    if (await canLaunchUrlString(url)) {
      await launchUrlString(url);
    } else {
      throw 'Impossible de lancer $url';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Colors.blueGrey[100],
        child: SingleChildScrollView(
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

              // Adding Row with social media icons
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: Center(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.facebook),
                        onPressed: () {
                          _launchURL('https://www.facebook.com/yourprofile');
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.facebook),
                        onPressed: () {
                          _launchURL('https://www.twitter.com/yourprofile');
                        },
                      ),
                      IconButton(
                        icon: const Icon(Icons.facebook),
                        onPressed: () {
                          _launchURL('https://www.linkedin.com/in/yourprofile');
                        },
                      ),
                    ],
                  ),
                ),
              ),

              Padding(
                padding: const EdgeInsets.all(15),
                child: Container(
                  width: double.infinity,
                  height: 500,
                  color: Colors.white, // Set your desired background color here
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
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
