import 'package:cake_client_app/data/cakes_data.dart';
import 'package:cake_client_app/utils/contantes.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  switchChecked(cake) {
    var index = cakes.indexOf(cake);
    setState(() {
      cakes[index].checked = !cakes[index].checked;
    });
  }

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
      body: ListView.separated(
          // itemBuilder: (context, index) => CakeCard(
          //     cake: cakes[index],
          itemBuilder: (context, index) => ListTile(
                leading: CircleAvatar(
                  backgroundImage:
                      AssetImage('assets/images/${cakes[index].image}'),
                  radius: 50,
                ),
                title: Text(
                  cakes[index].name,
                  style: TextStyle(fontWeight: FontWeight.w900),
                ),
                subtitle: Text('Disponible'),
                trailing: CircleAvatar(
                  foregroundColor: Colors.white,
                  backgroundColor: myPrimatyColor,
                  child: Text('17'),
                ),
                contentPadding: EdgeInsets.fromLTRB(5, 0, 5, 0),
              ),
          separatorBuilder: (context, index) => SizedBox(
                height: 5,
              ),
          itemCount: cakes.length),
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
