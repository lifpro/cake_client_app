import 'package:cake_client_app/models/cake_model.dart';
import 'package:cake_client_app/utils/contantes.dart';
import 'package:flutter/material.dart';

class CakeCard extends StatelessWidget {
  final CakeModel cake;
  final VoidCallback updateChecked;

  const CakeCard({super.key, required this.cake, required this.updateChecked});

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: SizedBox(
        height: 150,
        child: Stack(
          fit: StackFit.expand,
          children: [
            Ink.image(
              image: AssetImage(
                'assets/images/${cake.image}',
              ),
              fit: BoxFit.cover,
              child: InkWell(
                onTap: () {
                  updateChecked();
                },
              ),
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
                          cake.checked ? Icons.star : Icons.star_border,
                          size: 30,
                          color: myPrimatyColor,
                        )
                      ],
                    ),
                  ),
                  Row(
                    children: [
                      Text(
                        cake.name,
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
    );
  }
}
