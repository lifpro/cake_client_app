import 'package:cake_client_app/home/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        appBarTheme: AppBarTheme(
            backgroundColor: const Color.fromARGB(255, 55, 41, 8),
            centerTitle: true,
            foregroundColor: Colors.white),
        bottomNavigationBarTheme: BottomNavigationBarThemeData(
            backgroundColor: const Color.fromARGB(255, 55, 41, 8),
            selectedItemColor: Colors.white,
            unselectedItemColor: const Color.fromARGB(143, 224, 195, 195)),
        useMaterial3: true,
      ),
      //home: const MyHomePage(title: 'Cake APP'),
      home: HomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            //Text('Ligne1'),
            Container(
              color: Colors.red,
              height: 50,
              child: Text(
                'Entete'.toUpperCase(),
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
              // width: 50,
            ),
            Expanded(
              flex: 1,
              child: Stack(children: [
                Container(
                  decoration: BoxDecoration(
                      gradient: LinearGradient(colors: [
                    const Color.fromARGB(255, 61, 46, 2),
                    const Color.fromARGB(255, 81, 80, 76),
                  ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                  padding: const EdgeInsets.only(top: 0),
                  //height: 200,
                  //width: MediaQuery.of(context).size.width,
                  child: Image.asset(
                    'assets/images/1.png',
                    fit: BoxFit.contain,
                    width: MediaQuery.of(context).size.width,
                  ),
                ),
                Container(
                  alignment: Alignment.center,
                  child: RichText(
                    text: TextSpan(
                      text: 'Déstockage',
                      style: TextStyle(fontSize: 24, color: Colors.white),
                      children: <TextSpan>[
                        TextSpan(
                          text: " 2015",
                          style: TextStyle(
                              fontSize: 28,
                              fontWeight: FontWeight.w900,
                              color: Colors.white),
                          children: <TextSpan>[],
                        ),
                        TextSpan(
                          text: ' !!!',
                          style: TextStyle(
                              fontSize: 36,
                              fontWeight: FontWeight.w600,
                              color: Colors.white),
                          children: <TextSpan>[],
                        )
                      ],
                    ),
                  ),
                ),
                Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Container(
                      color: Colors.white,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('Forêt noir',
                              style: TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                          Text("Fcfa 12 000/Pièce",
                              style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                  color: Colors.black)),
                        ],
                      ),
                    ),
                    Container(
                      color: Colors.white,
                      child: Text(
                        'Taille : 20 X 20, 5 parts',
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.black),
                        textAlign: TextAlign.start,
                      ),
                    ),
                  ],
                ),
              ]),
            ),
            Expanded(
              flex: 3,
              child: Container(
                color: Colors.yellow,
                height: 50,
              ),
            ),
            Container(
              color: Colors.blue,
              height: 50,
              child: Text(
                'Footer'.toUpperCase(),
                style: TextStyle(
                  fontSize: 28,
                  color: Colors.white,
                ),
                textAlign: TextAlign.center,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
