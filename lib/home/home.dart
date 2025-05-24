import 'package:cake_client_app/home/widgets/cake_card.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  List cakes = [
    {'name': 'Fôret noire', 'image': '1.png'},
    {'name': 'Fôret blanche', 'image': '2.png'},
    {'name': 'Fôret melange', 'image': '3.png'}
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: InkWell(
            highlightColor: Colors.orangeAccent,
            splashColor: Colors.orangeAccent,
            radius: 50,
            child: Text(
              'Accueil',
            ),
            onLongPress: () {
              print('InkWell appuyer');
            },
          ),
          actions: [
            Icon(Icons.settings),
          ]),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: cakes
              .map((cake) => CakeCard(name: cake['name'], image: cake['image']))
              .toList(),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              label: 'Accueil',
              icon: Icon(Icons.home),
              backgroundColor: Colors.white),
          BottomNavigationBarItem(
              label: 'Profil',
              icon: Icon(Icons.person),
              backgroundColor: Colors.white),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.blue),
              child: Text(
                'My Cake APP',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 30,
                    fontWeight: FontWeight.w900),
              ),
            ),
            ListTile(
              title: Text('Menu 1'),
            ),
            ListTile(
              title: Text('Menu 2'),
            ),
            ListTile(
              title: Text('Menu 3'),
            )
          ],
        ),
      ),
    );
  }
}
