import 'package:flutter/material.dart';

class CakeDetailsPage extends StatelessWidget {
  const CakeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BackButton(onPressed: () => Navigator.pop(context)),
    );
  }
}
