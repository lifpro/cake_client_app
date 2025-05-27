import 'package:cake_client_app/utils/contantes.dart';
import 'package:flutter/material.dart';

class HomeProfilPage extends StatefulWidget {
  const HomeProfilPage({super.key});

  @override
  State<HomeProfilPage> createState() => _HomeProfilPageState();
}

class _HomeProfilPageState extends State<HomeProfilPage> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Form(
        key: _formKey,
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Veuillez saisir votre nom",
                    label: Text(
                      "Votre nom",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: myPrimatyColor),
                    )),
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                decoration: InputDecoration(
                    hintText: "Veuillez saisir votre email",
                    label: Text(
                      "Votre email",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: myPrimatyColor),
                    )),
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => {},
                child: Text('Se connecter'),
                style: ElevatedButton.styleFrom(
                  backgroundColor: myPrimatyColor, // Couleur de fond
                  foregroundColor: Colors.white, // Couleur du texte/icone
                ),
              )
            ],
          ),
        ));
  }
}
