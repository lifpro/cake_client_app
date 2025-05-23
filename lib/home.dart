import 'package:cake_client_app/contantes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'Accueil',
          ),
          actions: [
            Icon(Icons.settings),
          ]),
      body: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          children: [
            Card(
              elevation: 5,
              child: SizedBox(
                height: 150,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    Image.asset(
                      'assets/images/1.png',
                      fit: BoxFit.cover,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Expanded(
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Icon(
                                  Icons.star_border,
                                  size: 30,
                                  color: myPrimatyColor,
                                )
                              ],
                            ),
                          ),
                          Row(
                            children: [
                              Text(
                                'Forêt noir',
                                style: TextStyle(
                                    color: myPrimatyColor,
                                    fontSize: 30,
                                    fontWeight: FontWeight.w900),
                              )
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ],
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
