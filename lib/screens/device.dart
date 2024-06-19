import 'package:flutter/material.dart';
import 'profil.dart';
import 'experiences.dart';
import 'formation.dart';
import 'competences.dart';
import 'infos.dart';


class DeviceScreen extends StatefulWidget {
  
  @override
  _DeviceScreenState createState() => _DeviceScreenState();
}  


class _DeviceScreenState extends State<DeviceScreen> {
  int _currentScreen = 0;
  
  final List<Widget> _screenList = [ProfilScreen(), ExperienceScreen(), FormationScreen(), CompetencesScreen(), InfosScreen()];
  final List<String> _appBarTitles = ['Alexis Hadjian', 'Expérience', 'Formation', 'Compétence', 'Infos+'];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(_appBarTitles[_currentScreen]),
        backgroundColor: Colors.blueGrey[100],
      ),
      body: _screenList[_currentScreen],
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTabTapped,
        currentIndex: _currentScreen,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.person_2_outlined),
            label: 'Profil',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.location_city_rounded),
            label: 'Expérience',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.school),
            label: 'Formation',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.stacked_bar_chart_rounded),
            label: 'Compétence',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.info),
            label: 'Infos+',
          ),
        ],
        selectedItemColor: Colors.blue, // Couleur des icônes et du texte sélectionné
        unselectedItemColor: Colors.grey, // Couleur des icônes et du texte non sélectionné
      ),
    );

  }

  void onTabTapped(int index) {
    setState(() {
      _currentScreen = index;
    });
  }

}