import 'package:cake_client_app/home/home_list.dart';
import 'package:cake_client_app/home/home_profil.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: InkWell(
            highlightColor: Colors.orangeAccent,
            splashColor: Colors.orangeAccent,
            radius: 50,
            child: (_currentIndex == 0)
                ? Text(
                    'Accueil',
                  )
                : Text(
                    'Profil',
                  ),
            onLongPress: () {
              print('InkWell appuyer');
            },
          ),
          actions: [
            Icon(Icons.settings),
          ]),
      // body: Container(
      //   child: GridView(
      //     gridDelegate:
      //         SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      //     children: cakes
      //         .map((c) => Container(
      //               width: double.infinity,
      //               margin: EdgeInsets.all(5),
      //               child: Image.asset(
      //                 'assets/images/${c.image}',
      //                 fit: BoxFit.cover,
      //               ),
      //             ))
      //         .toList(),
      //   ),
      // ),
      body: (_currentIndex == 0) ? HomeListPage() : HomeProfilPage(),
      // body: ListView(children: [
      //   CakeCard(
      //       name: 'Gateau 1',
      //       image: '1.png',
      //       checked: false,
      //       updateChecked: () => {}),
      //   CakeCard(
      //       name: 'Gateau 2',
      //       image: '2.png',
      //       checked: false,
      //       updateChecked: () => {}),
      //   CakeCard(
      //       name: 'Gateau 3',
      //       image: '3.png',
      //       checked: false,
      //       updateChecked: () => {}),
      //   CakeCard(
      //       name: 'Gateau 4',
      //       image: '3.png',
      //       checked: false,
      //       updateChecked: () => {}),
      //   CakeCard(
      //       name: 'Gateau 5',
      //       image: '3.png',
      //       checked: false,
      //       updateChecked: () => {}),
      // ]),
      //  body: Container(
      //   padding: EdgeInsets.all(10),
      //   child: Column(
      //     children: cakes
      //         .map((cake) => CakeCard(
      //             name: cake.name,
      //             image: cake.image,
      //             checked: cake.checked,
      //             updateChecked: () => switchChecked(cake)))
      //         .toList(),
      //   ),
      // ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (int i) => {
          setState(() {
            _currentIndex = i;
          })
        },
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
