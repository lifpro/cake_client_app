import 'package:cake_client_app/utils/contantes.dart';
import 'package:flutter/material.dart';

class HomeProfilPage extends StatefulWidget {
  const HomeProfilPage({super.key});

  @override
  State<HomeProfilPage> createState() => _HomeProfilPageState();
}

class _HomeProfilPageState extends State<HomeProfilPage> {
  final _formKey = GlobalKey<FormState>();
  late String nom = "";
  late String email = "";
  late int numero;

  void connexion() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      print("nom=" + nom);
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        content: Text('Connexion effectuée aves success'),
        duration: Durations.extralong4,
      ));
    }
  }

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
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Le nom est requis';
                  }
                  return null;
                },
                onSaved: (newValue) {
                  nom = newValue!;
                },
              ),
              SizedBox(
                height: 10,
              ),
              TextFormField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                    hintText: "Veuillez saisir votre email",
                    label: Text(
                      "Votre email",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: myPrimatyColor),
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "L'émail est requis";
                  }
                  return null;
                },
                onSaved: (newValue) {
                  email = newValue!;
                },
              ),
              TextFormField(
                keyboardType: TextInputType.phone,
                decoration: InputDecoration(
                    hintText: "Veuillez saisir votre numéro",
                    label: Text(
                      "Votre numéro",
                      style: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 18,
                          color: myPrimatyColor),
                    )),
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return "Le numéro est requis";
                  }
                  return null;
                },
                onSaved: (newValue) {
                  numero = int.parse(newValue!);
                },
              ),
              SizedBox(
                height: 20,
              ),
              ElevatedButton(
                onPressed: () => connexion(),
                style: ElevatedButton.styleFrom(
                  backgroundColor: myPrimatyColor, // Couleur de fond
                  foregroundColor: Colors.white, // Couleur du texte/icone
                ),
                child: Text('Se connecter'),
              )
            ],
          ),
        ));
  }
}
