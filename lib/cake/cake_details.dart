import 'package:cake_client_app/models/cake_model.dart';
import 'package:cake_client_app/utils/contantes.dart';
import 'package:flutter/material.dart';

class CakeDetailsPage extends StatelessWidget {
  const CakeDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    final CakeModel cake =
        ModalRoute.of(context)!.settings.arguments as CakeModel;
    return NestedScrollView(
      body: Material(
        color: Colors.white,
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Container(
                  padding: EdgeInsets.all(8),
                  color: myPrimatyColor,
                  child: Text(
                    cake.name,
                    style: TextStyle(color: Colors.white, fontSize: 24),
                  ),
                ),
                Container(
                  padding: EdgeInsets.all(8),
                  color: Colors.white,
                  child: Text(
                    cake.description,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                ),
                BackButton(
                  onPressed: () => Navigator.pop(context, 'Blabla'),
                )
              ],
            ),
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
