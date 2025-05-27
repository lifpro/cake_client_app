import 'package:cake_client_app/models/cake_model.dart';
import 'package:flutter/material.dart';

class CakeDetailsPage extends StatelessWidget {
  const CakeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CakeModel cake =
        ModalRoute.of(context)!.settings.arguments as CakeModel;
    return NestedScrollView(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              BackButton(onPressed: () => Navigator.pop(context)),
            ],
          ),
        ),
      ),
      headerSliverBuilder: (BuildContext context, bool innerBoxIsScrolled) {
        return [
          SliverAppBar(
            expandedHeight: 280,
            floating: false,
            pinned: true,
            //backgroundColor: Colors.white,
            elevation: 1,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                'assets/images/${cake.image}',
                fit: BoxFit.cover,
              ),
            ),
          ),
        ];
      },
    );
  }
}
